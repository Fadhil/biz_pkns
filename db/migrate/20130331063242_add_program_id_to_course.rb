class AddProgramIdToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :program_id, :integer
  end
end
