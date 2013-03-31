class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :phone
      t.text :bio_data

      t.timestamps
    end
  end
end
