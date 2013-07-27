class AddRegisterDateToConsultant < ActiveRecord::Migration
  def change
    add_column :consultants, :register_date, :string
  end
end
