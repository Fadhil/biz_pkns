class Attendee < ActiveRecord::Base
  attr_accessible :attended, :email, :ic_number, :name, :user_id

  has_one :course, through: :attendance_list

  belongs_to :attendance_list
end
