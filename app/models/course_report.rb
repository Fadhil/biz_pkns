class CourseReport < ActiveRecord::Base
  attr_accessible :consultant_email, :course_actual_attendees, :course_date, :course_details, :course_id, :course_no_of_vips, :course_summary, :course_targeted_attendees, :course_title, :report_date
  attr_accessible :course_program, :course_program_id, :course_type, :course_schedule_attributes, :consultant_id, :course_photos_attributes
  has_one :course_schedule, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :course_schedule, allow_destroy: true

  has_many :course_photos, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :course_photos, allow_destroy: true

  has_one :course_survey, dependent: :destroy
  accepts_nested_attributes_for :course_survey, allow_destroy: :true

  belongs_to :course
  belongs_to :consultant
end
