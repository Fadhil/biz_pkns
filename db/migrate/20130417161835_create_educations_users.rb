class CreateEducationsUsers < ActiveRecord::Migration
  def change
    create_table :educations_users do |t|
      t.integer :user_id
      t.integer :education_id
      t.text :description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end

    add_index :educations_users, [:user_id, :education_id]
    add_index :educations_users, [:education_id, :user_id]
  end
end
