class AddAdvertTypeToAdvert < ActiveRecord::Migration
  def change
    add_column :adverts, :advert_type, :string
  end
end
