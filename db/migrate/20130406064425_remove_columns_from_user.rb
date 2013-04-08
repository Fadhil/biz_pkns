class RemoveColumnsFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :address1
    remove_column :users, :address2
    remove_column :users, :city
    remove_column :users, :postcode
    remove_column :users, :state
  end

  def down
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :city, :string
    add_column :users, :postcode, :string
    add_column :users, :state, :string
  end
end
