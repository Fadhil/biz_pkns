class UsersSkill < ActiveRecord::Base
  attr_accessible :des, :description, :experience, :skill_id, :user_id
  belongs_to :user
  belongs_to :skill
end
