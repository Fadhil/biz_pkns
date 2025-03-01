class Survey < ActiveRecord::Base
  attr_accessible :title, :questions_attributes, :description, :completed, :start_date, :end_date

  validates :title, presence: true

  has_many :questions
  accepts_nested_attributes_for :questions
  has_many :completed_surveys
  has_many :users, through: :completed_surveys

  belongs_to :creator, class_name: User

  scope :active, where('start_date <= ? AND end_date > ?', Date.today, Date.today)
  scope :latest, order('created_at DESC')
end
