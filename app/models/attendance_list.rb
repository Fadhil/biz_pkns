class AttendanceList < ActiveRecord::Base
  attr_accessible :attendee_counter, :course_id, :max_attendees, :program_id, :attendees_attributes
  attr_accessible :completed

  belongs_to :course
  has_many :attendees
  accepts_nested_attributes_for :attendees

  #after_update Attendee.create_walk_in_user


end
