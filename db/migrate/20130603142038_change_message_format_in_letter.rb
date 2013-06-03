class ChangeMessageFormatInLetter < ActiveRecord::Migration
  def up
    change_column :letters, :message, :text, :limit => nil
  end

  def down
  end
end
