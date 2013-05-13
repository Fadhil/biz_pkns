class AttendanceList < ActiveRecord::Base
  attr_accessible :attendee_counter, :course_id, :max_attendees, :program_id

  belongs_to :course
  has_many :attendees
end
