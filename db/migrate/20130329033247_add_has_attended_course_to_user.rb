class AddHasAttendedCourseToUser < ActiveRecord::Migration
  def change
    add_column :users, :has_atended_course, :boolean
  end
end
