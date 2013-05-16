class Program < ActiveRecord::Base
  attr_accessible :description, :name, :logo_attributes, :courses_attributes

  has_many :courses, dependent: :destroy#, inverse_of: :program
  has_many :previous_courses, dependent: :destroy 
  has_one :logo, as: :attachable, dependent: :destroy
  has_and_belongs_to_many :consultants

  accepts_nested_attributes_for :logo, allow_destroy: true
  accepts_nested_attributes_for :courses, allow_destroy: true
  accepts_nested_attributes_for :previous_courses, allow_destroy: true
end
