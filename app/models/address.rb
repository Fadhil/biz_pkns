class Address < ActiveRecord::Base
  attr_accessible :city, :line1, :line2, :postcode, :state
  belongs_to :addressable, polymorphic: true
  belongs_to :city
  accepts_nested_attributes_for :city
end
