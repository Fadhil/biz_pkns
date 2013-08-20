class AddNumberOfCoursesToTarget < ActiveRecord::Migration
  def change
    add_column :targets, :number_of_courses, :integer
  end
end
