class AddAttendedCourseToUser < ActiveRecord::Migration
  def change
    add_column :users, :attended_course, :string
    add_column :users, :has_attended_course, :string
  end
end
