class Attendee < ActiveRecord::Base
  attr_accessible :attended, :email, :ic_number, :name, :user_id

  belongs_to :attendance_list
end
