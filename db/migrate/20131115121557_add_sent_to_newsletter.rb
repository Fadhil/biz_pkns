class AddSentToNewsletter < ActiveRecord::Migration
  def change
    add_column :newsletters, :sent, :boolean
  end
end
