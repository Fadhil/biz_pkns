class ChangeStartDateAndEndDateInEducationsUsers < ActiveRecord::Migration
  def up
    remove_column :educations_users, :start_date
    remove_column :educations_users, :end_date
    add_column :educations_users, :start_date, :integer
    add_column :educations_users, :end_date, :integer
  end

  def down
    remove_column :educations_users, :start_date
    remove_column :educations_users, :end_date
    add_column :educations_users, :start_date, :date
    add_column :educations_users, :end_date, :date
  end
end
