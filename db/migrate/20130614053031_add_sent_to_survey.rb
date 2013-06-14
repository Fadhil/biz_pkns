class AddSentToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :sent, :boolean
  end
end
