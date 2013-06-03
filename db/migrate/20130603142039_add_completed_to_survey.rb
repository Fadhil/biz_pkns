class AddCompletedToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :completed, :boolean
  end
end
