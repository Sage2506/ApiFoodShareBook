class AddTypeToSystemPermission < ActiveRecord::Migration[5.1]
  def change
    add_reference :system_permissions, :permission_type, foreign_key: true
  end
end
