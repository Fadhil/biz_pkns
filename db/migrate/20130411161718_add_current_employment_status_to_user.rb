class AddCurrentEmploymentStatusToUser < ActiveRecord::Migration
  def change
    add_column :users, :current_employment_status, :string
  end
end
