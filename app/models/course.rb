class Course < ActiveRecord::Base
  attr_accessible :description, :end_date, :name, :start_date, :venue
  belongs_to :program
  has_one :consultant, through: :program
end
