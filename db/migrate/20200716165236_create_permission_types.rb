class CreatePermissionTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :permission_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
