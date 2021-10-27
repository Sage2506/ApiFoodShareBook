class AddPermissionListToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :permission_ids, :string
  end
end
