class AddRolePkns < ActiveRecord::Migration
  def up
    Role.create(name: 'pkns')
  end

  def down
    Role.delete(Role.find_by_name('pkns'))
  end
end
