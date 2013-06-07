class AddConsultantIdToAdvert < ActiveRecord::Migration
  def change
    add_column :adverts, :consultant_id, :integer
  end
end
