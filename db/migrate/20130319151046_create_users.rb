class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :ic_number
      t.string :email
      t.string :phone
      t.string :username

      t.timestamps
    end
  end
end
