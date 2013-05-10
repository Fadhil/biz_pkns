class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  before_save :default_values
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
  attr_accessible :users_skills_attributes, :educations_users_attributes, :businesses_attributes, :role_id

  validates_uniqueness_of :ic_number
  validates_format_of :ic_number, with:  /^\d{6}\-\d{2}\-\d{4}$/, :message => I18n.t('errors.ic_format')
  validates_format_of :phone, with:  /^\d*$/, :message => I18n.t('errors.phone_number')

  validates :password, :presence => true, :on => :create

  has_one :business_profile, dependent: :destroy
  accepts_nested_attributes_for :business_profile, allow_destroy: true

  has_one :profile_photo, as: :attachable, dependent: :destroy 
  accepts_nested_attributes_for :profile_photo, allow_destroy: true

  has_and_belongs_to_many :courses
  accepts_nested_attributes_for :courses, allow_destroy: true

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

  has_one :name, class_name: Business, dependent: :destroy 
  accepts_nested_attributes_for :name, allow_destroy: true

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
    self.business_profile.address.line1 + ' ' + self.business_profile.address.line2 + ', ' + self.business_profile.address.city.name + ' ' + self.business_profile.address.postcode + ', ' + self.business_profile.address.city.state_name unless self.business_profile.address.city.nil?
  end
end
