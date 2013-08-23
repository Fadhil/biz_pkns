class Consultant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable

  scope :between_years, lambda { |start_year, end_year| where('register_date >= ? AND register_date <= ?', start_year.to_s, end_year.to_s ) }

  before_save :complete_profile

  after_create :set_register_date

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :bio_data, :first_name, :last_name, :password, :phone
  attr_accessible :profile_photo_attributes, :company_name, :is_active, :programs_attributes, :consultants_programs_attributes
  attr_accessible :register_date

  has_many :consultants_programs, dependent: :destroy
  accepts_nested_attributes_for :consultants_programs, allow_destroy: true

  has_many :programs, through: :consultants_programs
  accepts_nested_attributes_for :programs
  
  has_many :courses, through: :programs
  validates :password, :presence => true, :confirmation => true, :on => :create

  has_many :users, through: :courses

  has_one :profile_photo, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :profile_photo, allow_destroy: true

  has_many :adverts, dependent: :destroy

  after_create :create_default_profile

  has_many :newsletters, dependent: :destroy

  has_many :course_reports, through: :courses

  # include MailForm::Delivery

  # # #append :remote_ip, :user_agent, :session
  #  attributes :name, :from, :subject, :message, :created_at

  # # scope :active, where(active: true)

  # def headers
  #   {
  #     :to => self.email,
  #     :from => "Test" #User.name#%("#{User.name}" <#{User.email}>)
  #   }
  # end

  def active_for_authentication?
    super && self.is_active?
  end

  def full_name
    ( self.first_name || '' ) + ' ' + ( self.last_name || '')
  end

  def create_default_profile
    self.create_default_name
    self.create_default_profile_photo
    self.save
  end

  def create_default_name
    self.first_name = 'Perunding'
    self.last_name = 'Baru'
  end

  def create_default_profile_photo
    self.build_profile_photo
    self.profile_photo.save
  end

  def self.active
    Consultant.includes(:courses).where('courses.created_at >= ? AND consultants.is_active is true',6.months.ago.to_date)
  end

  def self.inactive
    Consultant.all - Consultant.active
  end

  def complete_profile
    unless self.profile_complete?
      required_attributes = ['first_name','last_name','phone', 'email', 'company_name']
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

  def set_register_date
    self.register_date = Date.today.year
  end
end
