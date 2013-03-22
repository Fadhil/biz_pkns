class RemoveEmailAndPasswordFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :email
    remove_column :users, :password
  end

  def down
    add_column :users, :password, :string
    add_column :users, :email, :string
  end
end
