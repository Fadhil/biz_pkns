class AddActiveToConsultant < ActiveRecord::Migration
  def change
    add_column :consultants, :active, :boolean
  end
end
