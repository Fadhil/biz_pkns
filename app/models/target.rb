class Target < ActiveRecord::Base
  attr_accessible :course_category_id, :target_attendance, :year

  belongs_to :course_category
end
