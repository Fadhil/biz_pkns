class AddHasBusinessProfileToUser < ActiveRecord::Migration
  def change
    add_column :users, :has_business_profile, :boolean
  end
end
