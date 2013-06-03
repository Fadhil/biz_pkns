class AddLine1AndLine2AndPostcodeCityIdToLetter < ActiveRecord::Migration
  def change
    add_column :letters, :line1, :string
    add_column :letters, :line2, :string
    add_column :letters, :postcode, :string
    add_column :letters, :city_id, :integer
  end
end
