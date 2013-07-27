class AddActiveToAndActiveFromToConsultant < ActiveRecord::Migration
  def change
    add_column :consultants, :active_from, :string
    add_column :consultants, :date, :string
    add_column :consultants, :active_to, :date
  end
end
