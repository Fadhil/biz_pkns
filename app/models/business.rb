class Business < ActiveRecord::Base
  attr_accessible :name

  has_one :business_profiles, dependent: :destroy
  has_many :users, through: :business_profiles
end
