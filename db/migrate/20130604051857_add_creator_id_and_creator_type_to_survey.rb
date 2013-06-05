class AddCreatorIdAndCreatorTypeToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :creator_id, :integer
    add_column :surveys, :creator_type, :string
  end
end
