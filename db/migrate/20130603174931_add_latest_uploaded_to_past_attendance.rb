class AddLatestUploadedToPastAttendance < ActiveRecord::Migration
  def change
    add_column :past_attendances, :latest_uploaded, :boolean
  end
end
