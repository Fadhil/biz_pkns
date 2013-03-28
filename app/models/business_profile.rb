class BusinessProfile < ActiveRecord::Base
  attr_accessible :category, :company_name, :description, :registration_number, :address_attributes

  belongs_to :user

  has_one :address, as: :addressable, dependent: :destroy
  accepts_nested_attributes_for :address, allow_destroy: true
end
