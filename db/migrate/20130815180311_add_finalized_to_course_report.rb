class AddFinalizedToCourseReport < ActiveRecord::Migration
  def change
    add_column :course_reports, :finalized, :boolean
  end
end
