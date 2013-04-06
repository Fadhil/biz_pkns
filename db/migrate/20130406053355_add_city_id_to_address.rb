class AddCityIdToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :city_id, :integer
  end
end
