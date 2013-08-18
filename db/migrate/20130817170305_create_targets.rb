class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.integer :course_category_id
      t.integer :target_attendance
      t.integer :year

      t.timestamps
    end
  end
end
