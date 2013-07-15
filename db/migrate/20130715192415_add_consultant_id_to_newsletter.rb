class AddConsultantIdToNewsletter < ActiveRecord::Migration
  def change
    add_column :newsletters, :consultant_id, :integer
  end
end
