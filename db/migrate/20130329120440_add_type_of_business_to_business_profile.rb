class AddTypeOfBusinessToBusinessProfile < ActiveRecord::Migration
  def change
    add_column :business_profiles, :type_of_business, :string
  end
end
