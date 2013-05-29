class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :subject
      t.string :first_name
      t.string :last_name
      t.string :message

      t.timestamps
    end
  end
end
