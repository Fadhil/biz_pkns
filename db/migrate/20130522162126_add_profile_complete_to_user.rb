class AddProfileCompleteToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile_complete, :boolean
  end
end
