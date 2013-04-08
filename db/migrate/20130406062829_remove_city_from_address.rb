class RemoveCityFromAddress < ActiveRecord::Migration
  def up
    remove_column :addresses, :city
    remove_column :addresses, :state
  end

  def down
    add_column :addresses, :city, :string
    add_column :addresses, :state, :string
  end
end
