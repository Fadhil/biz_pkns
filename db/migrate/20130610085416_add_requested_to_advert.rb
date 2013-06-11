class AddRequestedToAdvert < ActiveRecord::Migration
  def change
    add_column :adverts, :requested, :boolean
  end
end
