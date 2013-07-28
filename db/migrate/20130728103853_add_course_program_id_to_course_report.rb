class AddCourseProgramIdToCourseReport < ActiveRecord::Migration
  def change
    add_column :course_reports, :course_program_id, :integer
  end
end
