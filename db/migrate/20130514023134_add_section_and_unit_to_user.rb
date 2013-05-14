class AddSectionAndUnitToUser < ActiveRecord::Migration
  def change
    add_column :users, :section, :string
    add_column :users, :unit, :string
  end
end
