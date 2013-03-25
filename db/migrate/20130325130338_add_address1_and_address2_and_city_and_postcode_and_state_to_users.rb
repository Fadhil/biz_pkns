class AddAddress1AndAddress2AndCityAndPostcodeAndStateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :city, :string
    add_column :users, :postcode, :string
    add_column :users, :state, :string
  end
end
