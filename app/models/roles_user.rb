# class RolesUser < ActiveRecord::Base
#   attr_accessible :role_id, :user_id
# end

class RoleUser < ActiveRecord::Base

  belongs_to :role
  belongs_to :user

end