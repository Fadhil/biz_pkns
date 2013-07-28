class CreateCourseReports < ActiveRecord::Migration
  def change
    create_table :course_reports do |t|
      t.integer :course_id
      t.text :course_details
      t.text :course_summary
      t.date :report_date
      t.string :course_title
      t.date :course_date
      t.string :consultant_email
      t.integer :course_targeted_attendees
      t.integer :course_actual_attendees
      t.integer :course_no_of_vips

      t.timestamps
    end
  end
end
