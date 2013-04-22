class ChangePaxDefaultInCourse < ActiveRecord::Migration
  def up
    change_column :courses, :pax, :integer, :default => 0
  end

  def down
    change_column :courses, :pax, :integer
  end
end
