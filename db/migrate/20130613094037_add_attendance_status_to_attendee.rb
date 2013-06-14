class AddAttendanceStatusToAttendee < ActiveRecord::Migration
  def change
    add_column :attendees, :attendance_status, :string
  end
end
