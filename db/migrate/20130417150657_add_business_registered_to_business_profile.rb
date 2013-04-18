class AddBusinessRegisteredToBusinessProfile < ActiveRecord::Migration
  def change
    add_column :business_profiles, :business_registered, :boolean
  end
end
