class AddNewlyGeneratedToPastAttendance < ActiveRecord::Migration
  def change
    add_column :past_attendances, :newly_generated, :boolean
  end
end
