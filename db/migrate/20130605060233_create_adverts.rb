class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :time
      t.date :start_date
      t.date :end_date
      t.boolean :paid_for
      t.boolean :active
      t.integer :weight
      t.integer :capacity
      t.text :content

      t.timestamps
    end
  end
end
