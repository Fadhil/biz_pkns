class CreateNewslettersTemplates < ActiveRecord::Migration
  def change
    create_table :newsletters_templates do |t|
      t.string :name
      t.text :template

      t.timestamps
    end
  end
end
