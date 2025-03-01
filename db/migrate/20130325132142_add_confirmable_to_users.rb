class AddConfirmableToUsers < ActiveRecord::Migration
  def up
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmation_sent_at, :datetime
    add_index :users, :confirmation_token, unique: true
  end

  def down
    remove_column :users, :confirmation_token, :confirmation_sent_at
  end
end
