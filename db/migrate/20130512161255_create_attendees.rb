class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.integer :user_id
      t.string :name
      t.string :email
      t.string :ic_number
      t.boolean :attended

      t.timestamps
    end
  end
end
