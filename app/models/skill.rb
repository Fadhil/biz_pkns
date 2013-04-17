class Skill < ActiveRecord::Base
  attr_accessible :description, :experience, :name

  has_many :users_skills, dependent: :destroy
  has_many :users, through: :users_skills
end
