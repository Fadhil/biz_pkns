class AddAttendanceListIdToAttendee < ActiveRecord::Migration
  def change
    add_column :attendees, :attendance_list_id, :integer
  end
end
