class RemoveRoleFromPermission < ActiveRecord::Migration[5.1]
  def change
    remove_column :permissions, :role_id
  end
end
