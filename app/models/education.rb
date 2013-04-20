class Education < ActiveRecord::Base
  attr_accessible :name

  has_many :educations_users, dependent: :destroy
  has_many :users, through: :educations_users

  validates_length_of :name, maximum: 140
end
