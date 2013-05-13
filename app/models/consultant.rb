class Consultant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :bio_data, :first_name, :last_name, :password, :phone
  attr_accessible :profile_photo_attributes, :company_name

  has_one :program
  accepts_nested_attributes_for :program
  
  has_many :courses, through: :program
  validates :password, :presence => true, :confirmation => true, :on => :create

  has_many :users, through: :courses

  has_one :profile_photo, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :profile_photo, allow_destroy: true

  include MailForm::Delivery

  #append :remote_ip, :user_agent, :session
  attributes :name, :from, :subject, :message, :created_at

  def headers
    {
      :to => "your.email@your.domain.com",
      :from => User.name#%("#{User.name}" <#{User.email}>)
    }
  end
end
