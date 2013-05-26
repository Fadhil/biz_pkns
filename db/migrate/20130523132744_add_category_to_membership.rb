class AddCategoryToMembership < ActiveRecord::Migration
  def change
    add_column :memberships, :category, :string
  end
end
