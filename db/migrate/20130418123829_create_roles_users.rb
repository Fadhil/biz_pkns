class CreateRolesUsers < ActiveRecord::Migration
  def up
    create_table :roles_users do |t|
      t.integer :role_id
      t.integer :user_id
    end

    def down
      remove_column :id
    end
  end
end
