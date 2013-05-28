class CreatePastAttendances < ActiveRecord::Migration
  def change
    create_table :past_attendances do |t|
      t.string :program
      t.string :course
      t.date :start_date
      t.date :end_date
      t.string :venue
      t.string :first_name
      t.string :last_name
      t.string :ic_number
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
