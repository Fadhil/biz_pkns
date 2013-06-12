class ChangeContentFormatInAdvert < ActiveRecord::Migration
  def up
    change_column :adverts, :content, :text, :limit => 80
  end

  def down
  end
end
