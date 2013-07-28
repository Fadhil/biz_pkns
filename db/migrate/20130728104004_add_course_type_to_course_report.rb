class AddCourseTypeToCourseReport < ActiveRecord::Migration
  def change
    add_column :course_reports, :course_type, :string
  end
end
