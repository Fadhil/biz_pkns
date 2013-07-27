class AddRegisterDateToConsultant < ActiveRecord::Migration
  def change
    add_column :consultants, :register_date, :date
  end
end
