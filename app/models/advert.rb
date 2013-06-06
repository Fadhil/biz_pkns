class Advert < ActiveRecord::Base
  attr_accessible :active, :capacity, :content, :description, :end_date, :location, :paid_for, :start_date, :time, :title, :weight
  attr_accessible :course_start_date, :course_end_date,:photo, :photo_attributes, :advert_type,:program_name, :course_type

  has_one :photo, as: :attachable, dependent: :destroy

  scope :active, where(active: true).order(:weight, :end_date).limit(NUM_ACTIVE_ADVERTS)
  scope :inactive, where('active is not true').order(:end_date)
  scope :pending, where(active: true).order(:end_date).offset(NUM_ACTIVE_ADVERTS)
  accepts_nested_attributes_for :photo
end
