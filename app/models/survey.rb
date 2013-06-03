class Survey < ActiveRecord::Base
  attr_accessible :title, :questions_attributes, :description, :completed

  has_many :questions
  accepts_nested_attributes_for :questions
  has_many :completed_surveys
  has_many :users, through: :completed_surveys

  scope :active, where('start_date < ? AND end_date > ?', Date.today, Date.today)
end
