class Program < ActiveRecord::Base
  attr_accessible :description, :name, :logo_attributes

  has_many :courses, dependent: :destroy
  has_many :previous_courses, dependent: :destroy 
  belongs_to :consultant

  has_one :logo, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :logo, allow_destroy: true
end
