class Target < ActiveRecord::Base
  attr_accessible :course_category_id, :target_attendance, :year, :number_of_courses

  belongs_to :course_category
  belongs_to :program
end
