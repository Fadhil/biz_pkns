class Advert < ActiveRecord::Base
  attr_accessible :active, :capacity, :content, :description, :end_date, :location, :paid_for, :start_date, :time, :title, :weight
  attr_accessible :course_start_date, :course_end_date,:photo, :photo_attributes, :advert_type,:program_name, :course_type, :consultant_id
  attr_accessible :user_id, :requested, :admin_created, :request_status

  has_one :photo, as: :attachable, dependent: :destroy
  scope :active, where('active is true AND ( requested is true OR admin_created is true)').order(:weight, :end_date).limit(10)
  scope :inactive, where('active is not true AND ( requested is true OR admin_created is true)').order(:end_date)
  scope :pending, where('active is true AND ( requested is true OR admin_created is true)').order(:end_date).offset(10)
  accepts_nested_attributes_for :photo

  belongs_to :consultant
  belongs_to :user
end
