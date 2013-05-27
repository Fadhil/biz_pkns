# class Role < ActiveRecord::Base
#   attr_accessible :name

#   has_many :users

# end

class Role < ActiveRecord::Base

  has_and_belongs_to_many :users, :join_table => :roles_users # :join_table => ::RolesUsers.table_name

  before_validation :camelize_name
  validates :name, :uniqueness => true

  def camelize_name(role_name = self.name)
    self.name = role_name.to_s.camelize
  end 

  def self.[](name)
    find_or_create_by_name(name.to_s.camelize)
  end 

end