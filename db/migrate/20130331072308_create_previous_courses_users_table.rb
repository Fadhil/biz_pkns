class CreatePreviousCoursesUsersTable < ActiveRecord::Migration
  def up
    create_table :previous_courses_users, id: false do |t|
      t.references :previous_course
      t.references :user
    end
    add_index :previous_courses_users, [:previous_course_id, :user_id]
    add_index :previous_courses_users, [:user_id, :previous_course_id]
  end

  def down
    drop_table :previous_courses_users
  end
end
