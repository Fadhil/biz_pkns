class AddSuccessfulToPastAttendance < ActiveRecord::Migration
  def change
    add_column :past_attendances, :successful, :boolean
  end
end
