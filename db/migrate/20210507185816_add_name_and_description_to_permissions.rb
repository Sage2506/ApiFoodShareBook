class AddNameAndDescriptionToPermissions < ActiveRecord::Migration[5.1]
  def change
    add_column :permissions, :name, :string
    add_column :permissions, :description, :string
  end
end
