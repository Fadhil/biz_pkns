class Program < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :courses, dependent: :destroy
  has_many :previous_courses, dependent: :destroy 
  belongs_to :consultant
end
