class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.text :caption
      t.string :category
      t.text :title
      t.references :attachable, polymorphic: true
      t.timestamps
    end
  end
end
