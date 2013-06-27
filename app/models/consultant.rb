class Consultant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :bio_data, :first_name, :last_name, :password, :phone
  attr_accessible :profile_photo_attributes, :company_name, :is_active, :programs_attributes, :consultants_programs_attributes

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

  before_create :default_name

   include MailForm::Delivery

  # #append :remote_ip, :user_agent, :session
   attributes :name, :from, :subject, :message, :created_at

  # scope :active, where(active: true)

  # def headers
  #   {
  #     :to => "your.email@your.domain.com",
  #     :from => User.name#%("#{User.name}" <#{User.email}>)
  #   }
  # end

  def active_for_authentication?
    super && self.is_active?
  end

  def default_name
    self.first_name = 'Perunding'
    self.last_name = 'Baru'
  end

  def self.active
    Consultant.includes(:courses).where('courses.created_at >= ?',6.months.ago.to_date)
  end

  def self.inactive
    Consultant.all - Consultant.active
  end
end
