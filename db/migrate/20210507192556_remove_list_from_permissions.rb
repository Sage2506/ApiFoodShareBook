class RemoveListFromPermissions < ActiveRecord::Migration[5.1]
  def change
    remove_column :permissions, :list
  end
end
