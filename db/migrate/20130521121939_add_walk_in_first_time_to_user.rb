class AddWalkInFirstTimeToUser < ActiveRecord::Migration
  def change
    add_column :users, :walk_in_first_time, :boolean
  end
end
