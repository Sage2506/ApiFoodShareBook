class AddDinerToDishes < ActiveRecord::Migration[5.1]
  def change
    add_column :dishes, :diners, :integer
  end
end
