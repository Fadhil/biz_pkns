class AddConsultantIdToProgram < ActiveRecord::Migration
  def change
    add_column :programs, :consultant_id, :integer
  end
end
