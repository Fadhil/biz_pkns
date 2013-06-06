class AddCourseTypeAndProgramNameToAdvert < ActiveRecord::Migration
  def change
    add_column :adverts, :course_type, :string
    add_column :adverts, :program_name, :string
  end
end
