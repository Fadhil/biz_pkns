class UsersSkill < ActiveRecord::Base
  attr_accessible :des, :description, :experience, :skill_id, :user_id
  belongs_to :user
  belongs_to :skill

  validates_numericality_of :experience, less_than_or_equal_to: 99
end
