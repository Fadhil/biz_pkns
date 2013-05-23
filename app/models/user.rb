class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  scope :nonadmin, where(:role_id=> nil)
  scope :members, joins(:membership)
  scope :nonmembers, joins('left outer join memberships on users.id = memberships.user_id').where('memberships.id is null')
  before_save :default_values
  before_save :complete_profile

  def default_values
    self.confirmed ||= 'false'
  end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :gender, :ic_number, :first_name, :last_name, :password, :phone
  attr_accessible :has_attended_course, :attended_course
  attr_accessible :has_business_profile, :business_profile_attributes
  attr_accessible :profile_photo_attributes, :courses_attributes, :previous_courses_attributes
  attr_accessible :created_at, :address_attributes
  attr_accessible :twitter_handle, :facebook_handle, :current_employment_status
  attr_accessible :education_background_attributes, :experience_attributes, :businesses_attributes, :role_id
  attr_accessible :staff_number, :section, :unit, :is_active, :office_phone
  attr_accessible :walk_in_first_time, :confirmed

  validates_uniqueness_of :ic_number
  validates_format_of :ic_number, with:  /^\d{6}\-\d{2}\-\d{4}$/, :message => I18n.t('errors.ic_format')
  validates_format_of :phone, with:  /^\d*$/, :message => I18n.t('errors.phone_number')

  validates :password, :presence => true, :on => :create

  has_one :business_profile, dependent: :destroy
  accepts_nested_attributes_for :business_profile, allow_destroy: true

  has_one :profile_photo, as: :attachable, dependent: :destroy 
  accepts_nested_attributes_for :profile_photo, allow_destroy: true

  has_and_belongs_to_many :courses
  accepts_nested_attributes_for :courses

  has_many :programs, through: :courses

  has_and_belongs_to_many :previous_courses
  accepts_nested_attributes_for :previous_courses, allow_destroy: true

  has_one :address, as: :addressable, dependent: :destroy
  accepts_nested_attributes_for :address, allow_destroy: true

  has_many :experience, class_name: UsersSkill, dependent: :destroy 
  accepts_nested_attributes_for :experience, allow_destroy: true
  has_many :skills, through: :experience

  has_many :education_background, class_name: EducationsUser, dependent: :destroy
  accepts_nested_attributes_for :education_background, allow_destroy: true
  has_many :educations, through: :education_background

  # has_one :name, class_name: Business, dependent: :destroy 
  # accepts_nested_attributes_for :name, allow_destroy: true

  has_many :attendances,  class_name: Attendee, dependent: :destroy

  has_one :membership, dependent: :destroy

  belongs_to :role

  def super_admin?
    !self.role.name('super admin').nil?
  end

  def admin?
    if !self.role.nil?
      self.role.name == 'admin' ? true : false
    else
      false
    end
  end

  def set_city(city_id)
    if city = City.find(city_id)
      self.address.city = city
      self.save
    end
  end

  def age
    year_of_birth = self.ic_number[0..1]
    if year_of_birth.to_i >= 60
      year_of_birth = "19#{year_of_birth}"
    else
      year_of_birth = "20#{year_of_birth}"
    end

    month_of_birth = self.ic_number[2..3]
    day_of_birth = self.ic_number[4..5]
    
    date_of_birth = Time.new(year_of_birth, month_of_birth, day_of_birth)

    seconds_since_birth = Time.now - date_of_birth
    age = (seconds_since_birth/SECONDS_IN_A_YEAR).floor
  end

  def full_name
    self.first_name + ' ' + self.last_name
  end

  def full_business_address
    unless self.business_profile.nil?
      self.business_profile.address.line1 + ' ' + self.business_profile.address.line2 + ', ' + self.business_profile.address.city.name + ' ' + self.business_profile.address.postcode + ', ' + self.business_profile.address.city.state_name unless self.business_profile.address.city.nil?
    end
  end

  def active_for_authentication?
    super && self.is_active?
  end

  def make_member
    if self.membership.nil?
      self.membership = Membership.create
      self.membership.member_number = generate_member_id(self.membership.id)
      self.membership.save
      self.confirmed = true
      logger.info "Made user with ID: #{self.id} a member with member_id: #{self.membership.id}\n"
    end
  end

  def generate_member_id(id)
    biz_id = (id + 499).to_s #start at 500
    biz_id_string = "BIZ" + "0"*(MEMBER_NUMBER_DIGITS - biz_id.size) + biz_id
    biz_id_string
  end

  def self.remove_inactive_users
    inactive_users = User.where('confirmed <> ? and created_at < ?', true, 90.days.ago)
    logger.info "Found #{inactive_users.count} inactive users\n"
    if !inactive_users.empty?
      logger.info "These users are about to be deleted:\n"
      inactive_users.each_with_index do |u,i|
        logger.info "#{i+1}. UserID: #{u.id}, Name: #{u.full_name}\n"
      end
      logger.info "Deleting...\n"
      inactive_users.delete_all
      if inactive_users.empty?
        logger.info "Inactive users all deleted\n"
      else
        logger.info "Something must've gone wrong\n"
      end
    else
      logger.info "No users to delete"
    end

    logger.info "Finished task remove inactive users"

  end

  def self.import(file)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(3)
    (4..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      
      # spreadsheet.each(
      #   :no => 'index',
      #   :program => 'program_name',
      #   :namakursus => 'course_name',
      #   :tarikhmula => 'start_date',
      #   :tarikhakhir => 'end_date',
      #   :tempat => 'venue',
      #   :nama => 'first_name',
      #   :namabapa => 'last_name',
      #   :nokp => 'ic_number',
      #   :notel => 'phone',
      #   :email => 'email'
      #   ) {|hash| arr << hash}

      # index = spreadsheet.cell(line,'A')
      # program_name = spreadsheet.cell(line,'B')
      # course_name = spreadsheet.cell(line,'C')
      # start_date = spreadsheet.cell(line,'D')
      # end_date = spreadsheet.cell(line,'E')
      # venue = spreadsheet.cell(line,'F')
      # first_name = spreadsheet.cell(line,'G')
      # last_name = spreadsheet.cell(line,'H')
      # ic_number = spreadsheet.cell(line,'I')
      # phone = spreadsheet.cell(line,'J')
      # email = spreadsheet.cell(line,'K')

      user = find_by_id(row["no"]) || new
      user.attributes = row.to_hash.slice(*accessible_attributes)
      user.save!
    end
  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when ".csv" then Csv.new(file.path, nil, :ignore)
    when ".xls" then Excel.new(file.path, nil, :ignore)
    when ".xlsx" then Excelx.new(file.path, nil, :ignore)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end

  def complete_profile
    unless self.profile_complete?
      required_attributes = ['first_name','last_name','ic_number', 'phone', 'email', 'gender', 'current_employment_status', 'experience', 'education_background']
      @complete = true
      
      required_attributes.each do |r| 

        if self.send(r).nil? || self.send(r).empty?
          @complete = false
        end

      end
      if @complete
        self.profile_complete = true
      end
    end
  end
end
