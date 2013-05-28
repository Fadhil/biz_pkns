class AddCompletedToAttendanceList < ActiveRecord::Migration
  def change
    add_column :attendance_lists, :completed, :boolean
  end
end
