class Target < ActiveRecord::Base
  attr_accessible :course_category_id, :target_attendance, :year, :number_of_courses

  belongs_to :course_category
  belongs_to :program

  scope :year, lambda { |year| where(year: year) }
  scope :course_category_id, lambda { |course_category_id| where(course_category_id: course_category_id)}
end
