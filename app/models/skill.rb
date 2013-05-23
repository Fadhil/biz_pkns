class Skill < ActiveRecord::Base
  attr_accessible :description, :experience, :name

  has_many :experience, class_name: UsersSkill, dependent: :destroy
  has_many :users, through: :experience

  validates_length_of :name, maximum: 140
end
