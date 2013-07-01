class AddProfileCompleteToConsultant < ActiveRecord::Migration
  def change
    add_column :consultants, :profile_complete, :boolean
  end
end
