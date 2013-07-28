class AddCourseVenueToCourseReport < ActiveRecord::Migration
  def change
    add_column :course_reports, :course_venue, :string
  end
end
