class Survey < ActiveRecord::Base
  attr_accessible :title, :questions_attributes, :description, :completed, :start_date, :end_date

  has_many :questions
  accepts_nested_attributes_for :questions
  has_many :completed_surveys
  has_many :users, through: :completed_surveys

  scope :active, where('start_date < ? AND end_date > ?', Date.today, Date.today)
end
