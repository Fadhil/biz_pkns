class AddCourseStartDateAndCourseEndDateToAdvert < ActiveRecord::Migration
  def change
    add_column :adverts, :course_start_date, :date
    add_column :adverts, :course_end_date, :date
  end
end
