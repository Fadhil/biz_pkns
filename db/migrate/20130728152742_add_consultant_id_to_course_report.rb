class AddConsultantIdToCourseReport < ActiveRecord::Migration
  def change
    add_column :course_reports, :consultant_id, :integer
  end
end
