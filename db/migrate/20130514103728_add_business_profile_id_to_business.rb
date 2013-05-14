class AddBusinessProfileIdToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :business_profile_id, :integer
  end
end
