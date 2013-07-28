class RemoveActiveFromConsultant < ActiveRecord::Migration
  def up
    remove_column :consultants, :active
  end

  def down
    add_column :consultants, :active, :boolean
  end
end
