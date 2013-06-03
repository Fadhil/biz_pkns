class CreateSurveysUsers < ActiveRecord::Migration
  def up
    create_table :surveys_users do |t|
      t.integer :survey_id
      t.integer :user_id
    end

    add_index :surveys_users, :survey_id
    add_index :surveys_users, :user_id
  end

  def down
    drop_table :surveys_users
  end
end
