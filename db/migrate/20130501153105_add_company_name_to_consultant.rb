class AddCompanyNameToConsultant < ActiveRecord::Migration
  def change
    add_column :consultants, :company_name, :string
  end
end
