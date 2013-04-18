class ChangeDescriptionStringInBusinessProfiles < ActiveRecord::Migration
  def up
    change_column :business_profiles, :description, :text
  end

  def down
    change_column :business_profiles, :description, :string
  end
end
