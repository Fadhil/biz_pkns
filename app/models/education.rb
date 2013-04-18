class Education < ActiveRecord::Base
  attr_accessible :name

  has_many :educations_users, dependent: :destroy
  has_many :users, through: :educations_users
end
