class CreateAdvertTransactions < ActiveRecord::Migration
  def change
    create_table :advert_transactions do |t|
      t.integer :advert_id
      t.string :title
      t.string :advert_action

      t.timestamps
    end
  end
end
