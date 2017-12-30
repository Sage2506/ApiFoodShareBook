class AddImageToDishes < ActiveRecord::Migration[5.1]
  def change
    add_column :dishes, :image, :string
  end
end
