class CreateBusinessProfiles < ActiveRecord::Migration
  def change
    create_table :business_profiles do |t|
      t.string :category
      t.string :company_name
      t.text :description
      t.string :registration_number
      t.integer :user_id
      t.timestamps
    end
  end
end
