class AddTwitterHandleAndFacebookHandleToUser < ActiveRecord::Migration
  def change
    add_column :users, :twitter_handle, :string
    add_column :users, :facebook_handle, :string
  end
end
