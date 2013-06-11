class AddAdminCreatedToAdvert < ActiveRecord::Migration
  def change
    add_column :adverts, :admin_created, :boolean
  end
end
