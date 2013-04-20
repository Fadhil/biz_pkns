class AddPaxToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :pax, :integer
  end
end
