class AddCourseProgramToCourseReport < ActiveRecord::Migration
  def change
    add_column :course_reports, :course_program, :string
  end
end
