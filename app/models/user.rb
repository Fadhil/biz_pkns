class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  before_save :default_values
  def default_values
    self.confirmed ||= 'false'
  end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable#, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :ic_number, :first_name, :last_name, :password, :phone
  attr_accessible :address1, :address2, :city, :postcode, :state, :avatar

  mount_uploader :avatar, AvatarUploader
  validates :password, :presence => true, :confirmation => true, :on => :create
end
