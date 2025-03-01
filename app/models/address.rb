class Address < ActiveRecord::Base
  attr_accessible :line1, :line2, :postcode, :city_attributes
  attr_accessible :phone, :fax, :city_id
  belongs_to :addressable, polymorphic: true
  belongs_to :city
  accepts_nested_attributes_for :city
end
