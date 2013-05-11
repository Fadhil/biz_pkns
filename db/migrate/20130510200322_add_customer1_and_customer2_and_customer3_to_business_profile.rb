class AddCustomer1AndCustomer2AndCustomer3ToBusinessProfile < ActiveRecord::Migration
  def change
    add_column :business_profiles, :customer1, :string
    add_column :business_profiles, :customer2, :string
    add_column :business_profiles, :customer3, :string
  end
end
