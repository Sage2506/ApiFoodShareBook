class CreateSystemPermissions < ActiveRecord::Migration[5.1]
  def change
    create_table :system_permissions do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
