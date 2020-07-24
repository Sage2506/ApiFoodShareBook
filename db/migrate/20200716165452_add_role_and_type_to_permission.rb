class AddRoleAndTypeToPermission < ActiveRecord::Migration[5.1]
  def change
    add_reference :permissions, :role, foreign_key: true
    add_reference :permissions, :permission_type, foreign_key: true
  end
end
