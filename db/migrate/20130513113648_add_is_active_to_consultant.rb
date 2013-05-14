class AddIsActiveToConsultant < ActiveRecord::Migration
  def change
    add_column :consultants, :is_active, :boolean
  end
end
