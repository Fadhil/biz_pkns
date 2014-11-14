class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  scope :nonadmin, includes(:roles_user).where('roles_users.role_id is null')
  scope :members, joins(:membership)
  scope :nonmembers, joins('left outer join memberships on users.id = memberships.user_id').where('memberships.id is null')
  scope :male, where(gender: 'm')
  scope :female, where(gender: 'f')
  scope :has_address, joins(:address).where('addresses.line2 <> ? and addresses.line1 <> ?','','')
  scope :age_13_below, Proc.new { select { |u| u.age <= 13} }
  scope :age_13_18, Proc.new { select { |u| u.age > 13 && u.age <= 18} }
  scope :age_19_24, Proc.new { select { |u| u.age > 18 && u.age <= 24} }
  scope :age_25_40, Proc.new { select { |u| u.age > 24 && u.age <= 40} }
  scope :age_41_above, Proc.new { select { |u| u.age > 40 } }
  scope :inactive, where('confirmed <> ? and created_at < ? and email <> ?', true, 90.days.ago, 'admin@admin.com')

  scope :own_business, where( current_employment_status: 'own_business')
  scope :working_studying, where( current_employment_status: 'working_studying')
  scope :studying, where( current_employment_status: 'studying')
  scope :working_self_business, where( current_employment_status: 'working_self_business')
  scope :part_time_business, where( current_employment_status: 'part_time_business')
  scope :working, where( current_employment_status: 'working')
  scope :unknown, where( 'current_employment_status not in (?) 
                          or current_employment_status is null',['own_business',
                                                                'working_studying',
                                                                'studying', 
                                                                'working_self_business',
                                                                'parttime_business',
                                                                'working'])
  scope :has_employment_status, where('current_employment_status is not null AND 
                                        current_employment_status in (?)',['own_business',
                                                                        'working_studying',
                                                                        'studying', 
                                                                        'working_self_business',
                                                                        'parttime_business',
                                                                        'working'])

  scope :working_employment_status, where('current_employment_status in (?)',['own_business',
                                                                              'working_self_business',
                                                                              'working_studying'])

  scope :has_profile_photo, joins(:profile_photo)
  
  before_save :default_values
  before_save :complete_profile
  after_create :create_default_profile

  def default_values
    self.confirmed ||= 'false'
  end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :gender, :ic_number, :first_name, :last_name, :password, :phone
  attr_accessible :has_attended_course, :attended_course
  attr_accessible :has_business_profile, :business_profiles_attributes
  attr_accessible :profile_photo_attributes, :courses_attributes, :previous_courses_attributes
  attr_accessible :created_at, :address_attributes
  attr_accessible :twitter_handle, :facebook_handle, :current_employment_status
  attr_accessible :education_background_attributes, :experience_attributes, :businesses_attributes, :role_id
  attr_accessible :staff_number, :section, :unit, :is_active, :office_phone
  attr_accessible :walk_in_first_time, :confirmed, :membership_attributes, :terms_of_service

  validates_uniqueness_of :ic_number
  validates_format_of :ic_number, with:  /^\d{6}\-\d{2}\-\d{4}$/, :message => I18n.t('errors.ic_format')
  validates_format_of :phone, with:  /^\d*$/, :message => I18n.t('errors.phone_number')
  #validates :terms_of_service, acceptance: true
  validates :password, :presence => true, :on => :create

  has_many :business_profiles, dependent: :destroy
  accepts_nested_attributes_for :business_profiles, allow_destroy: true

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

  has_many :roles_user
  has_many :roles, through: :roles_user

  has_many :completed_surveys
  has_many :surveys, through: :completed_surveys

  has_many :responses
  has_many :questions, through: :responses

  has_many :letters

  has_many :created_surveys, class_name: Survey, as: :creator

  has_many :adverts, dependent: :destroy
  

  def super_admin?
    !self.role.title('superadmin').nil?
  end

  def has_role?(title)
    roles.any? { |a| a.title == title.camelize }
  end

  def add_role(title)
      roles << Role[title] unless has_role?(title)
  end

  def remove_role(title)
      roles.delete Role[title]
  end

  def admin?
    has_role?('Admin')
  end

  def set_city(city_id)
    if city = City.find(city_id)
      self.address.city = city
      self.save
    end
  end

  def age
    if self.ic_number[0..5].to_s == '000000' || self.ic_number[0..5].to_s == '100000'
      logger.info "Invalid IC\n\n"
      age = 9999
    else
      year_of_birth = self.ic_number[0..1]
      if year_of_birth.to_i >= 60
        year_of_birth = "19#{year_of_birth}"
      else
        year_of_birth = "20#{year_of_birth}"
      end



      month_of_birth = self.ic_number[2..3]
      day_of_birth = self.ic_number[4..5]

      if month_of_birth.to_i > 12
        month_of_birth = '12'
      elsif month_of_birth.to_i < 1
        month_of_birth = '1'
      end

      if day_of_birth.to_i < 1
        day_of_birth = '1'
      end

      logger.info "the ic: #{self.ic_number}\n\n"
      logger.info "email: #{self.email}\n\n"
      logger.info "This guys birthday:"
      logger.info year_of_birth + "Year"
      logger.info month_of_birth + "month"
      logger.info day_of_birth + "day"

        
      date_of_birth = Time.new(year_of_birth, month_of_birth, 1)

      seconds_since_birth = Time.now - date_of_birth
      age = (seconds_since_birth/SECONDS_IN_A_YEAR).floor
    end
  end

  def full_name
    self.first_name.to_s + ' ' + self.last_name.to_s
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
    end
  end

  def is_member?
    unless self.membership.nil?
      if !self.membership.member_number.blank?
        true
      end
    end
  end

  def generate_member_id(id)
    year = Date.today.year.to_s[2..4]
    biz_id = (id + 499).to_s #start at 500
    biz_id_string = "BIZ" + year + "0"*(MEMBER_NUMBER_DIGITS - biz_id.size) + biz_id
    biz_id_string
  end

  def self.remove_inactive_users
    inactive_users = User.inactive
    if !inactive_users.empty?
      inactive_users.each_with_index do |u,i|
      end
      inactive_users.delete_all
      if inactive_users.empty?
      else
      end
    else
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

  def finished_surveys
    self.surveys.where('completed_surveys.completed = ?',true)
  end

  def unfinished_surveys
    self.surveys.active.where('completed_surveys.completed is not true AND surveys.completed is not true')
  end

  def create_default_profile
    self.create_default_profile_photo
    self.create_default_last_name
    self.save
  end

  def create_default_last_name
    if self.last_name.blank?
      self.last_name = 'Nama Bapa'
    end
  end

  def create_default_profile_photo
    self.build_profile_photo
    self.profile_photo.save
  end

  # Select x number of random people with current employment status with a business
  def self.random_businessmen(x)
    random_ids = self.has_profile_photo.working_employment_status.map(&:id).sort_by{ rand }.slice(0,x)
    self.where('id in (?)',random_ids).sort_by{ rand }
  end
end
