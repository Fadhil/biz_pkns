class Role < ActiveRecord::Base
  attr_accessible :name

  has_many :users

  def name(role)
    (self.role.name == role) ? true : false
  end
end
