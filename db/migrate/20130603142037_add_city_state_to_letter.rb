class AddCityStateToLetter < ActiveRecord::Migration
  def change
    add_column :letters, :city, :string
    add_column :letters, :state, :string
  end
end
