class AddIsActiveToUser < ActiveRecord::Migration
  def up
    add_column :users, :is_active, :boolean

    User.all.each do |u|
      u.is_active = true
      u.save
    end
  end

  def down
    remove_column :users, :is_active
  end
end
