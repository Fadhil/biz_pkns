class Role < ActiveRecord::Base
  attr_accessible :name, :title

  has_many :roles_user
  has_many :users, through: :roles_user

  before_validation :camelize_title
  validates :title, :uniqueness => true

  def camelize_title(role_title = self.title)
    self.title = role_title.to_s.camelize
  end

  def self.[](title)
    find_or_create_by_title(title.camelize)
  end

end
