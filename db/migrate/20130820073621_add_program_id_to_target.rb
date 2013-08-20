class AddProgramIdToTarget < ActiveRecord::Migration
  def change
    add_column :targets, :program_id, :integer
  end
end
