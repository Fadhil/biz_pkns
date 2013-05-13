class CreateAttendanceLists < ActiveRecord::Migration
  def change
    create_table :attendance_lists do |t|
      t.integer :course_id
      t.integer :program_id
      t.integer :max_attendees
      t.integer :attendee_counter

      t.timestamps
    end
  end
end
