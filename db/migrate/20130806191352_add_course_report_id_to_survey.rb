class AddCourseReportIdToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :course_report_id, :integer
  end
end
