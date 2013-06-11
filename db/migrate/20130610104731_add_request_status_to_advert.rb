class AddRequestStatusToAdvert < ActiveRecord::Migration
  def change
    add_column :adverts, :request_status, :string
  end
end
