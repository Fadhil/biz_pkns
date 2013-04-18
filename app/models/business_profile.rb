class BusinessProfile < ActiveRecord::Base
  attr_accessible :category, :type_of_business, :company_name, :description, :registration_number
  attr_accessible :business_photo_attributes, :business_logo_attributes, :address_attributes
  attr_accessible :business_registered

  belongs_to :user

  has_one :address, as: :addressable, dependent: :destroy
  accepts_nested_attributes_for :address, allow_destroy: true

  has_one :business_logo, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :business_logo, allow_destroy: true

  has_one :business_photo, as: :attachable, dependent: :destroy 
  accepts_nested_attributes_for :business_photo, allow_destroy: true

  def set_city(city_id)
    city = City.find(city_id)
    self.address.city = city
    self.save
  end


end
