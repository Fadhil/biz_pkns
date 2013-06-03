class CreateCompletedSurveys < ActiveRecord::Migration
  def up
    create_table :completed_surveys do |t|
      t.integer :user_id
      t.integer :survey_id
      t.boolean :completed

      t.timestamps
    end

    add_index :completed_surveys, :user_id
    add_index :completed_surveys, :survey_id
  end

  def down
    drop_table :completed_surveys
  end
end
