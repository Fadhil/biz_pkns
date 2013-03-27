class AddIndexToUser < ActiveRecord::Migration
  def up
    add_index :users, :ic_number, unique: true
  end

  def down
    remove_index :users, :ic_number
  end
end
