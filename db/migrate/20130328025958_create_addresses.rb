class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :city
      t.string :postcode
      t.string :state
      t.references :addressable, polymorphic: true
      t.timestamps
    end
  end
end
