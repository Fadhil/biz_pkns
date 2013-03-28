class BusinessProfile < ActiveRecord::Base
  attr_accessible :category, :company_name, :description, :registration_number
  belongs_to :user
end
