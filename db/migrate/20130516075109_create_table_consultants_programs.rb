class CreateTableConsultantsPrograms < ActiveRecord::Migration
  def up
    create_table :consultants_programs, id: false do |t|
      t.integer :consultant_id
      t.integer :program_id
    end

    add_index :consultants_programs, :consultant_id
    add_index :consultants_programs, :program_id
  end

  def down
    drop_table :consultants_programs
  end
end
