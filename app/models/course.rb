class Course < ActiveRecord::Base
  attr_accessible :description, :end_date, :name, :start_date, :venue, :status
  attr_accessible :program_id
  belongs_to :program
  accepts_nested_attributes_for :program
  has_one :consultant, through: :program
  has_and_belongs_to_many :users

  scope :upcoming, lambda{ where('start_date >= ?', Date.today)}
  scope :active, where(status: true)
end