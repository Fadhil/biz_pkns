class CreateConsultantsPrograms < ActiveRecord::Migration
  def change
    create_table :consultants_programs do |t|
      t.integer :consultant_id
      t.integer :program_id

      t.timestamps
    end
  end
end
