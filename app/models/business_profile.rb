class BusinessProfile < ActiveRecord::Base
  attr_accessible :category, :type_of_business, :company_name, :description, :registration_number
  attr_accessible :business_photo_attributes, :business_logo_attributes, :address_attributes, :caption
  attr_accessible :business_registered
  attr_accessible :customer1, :customer2, :customer3
  attr_accessible :line1, :line2, :postcode, :city_id, :phone, :fax

  #after_initialize :initialize_photos
  belongs_to :user

  # has_one :address, as: :addressable, dependent: :destroy
  # accepts_nested_attributes_for :address, allow_destroy: true

  belongs_to :city 
  has_one :business_logo, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :business_logo, allow_destroy: true

  has_one :business_photo, as: :attachable, dependent: :destroy 
  accepts_nested_attributes_for :business_photo, allow_destroy: true

  #after_initialize :initialize_address

  def set_city(city_id)
    city = City.find(city_id)
    self.address.city = city
    self.save
  end

  def initialize_photos
    self.build_business_photo
    self.build_business_logo
    self.save
  end

  def full_business_address
    full_name = "#{( self.line1 )}" + ( ', ' unless self.line1.blank? ).to_s + "#{( self.line2 )}"
    full_name = full_name +  "#{( ', ' unless self.line1.blank? && self.line2.blank? )}".to_s + 
              ( self.city.name +  ( ', ' ) + self.city.state_name ) unless self.city.nil?

    full_name
  end

end
