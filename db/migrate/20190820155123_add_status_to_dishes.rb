class AddStatusToDishes < ActiveRecord::Migration[5.1]
  def change
    add_column :dishes, :status, :boolean, :default => true
  end
end
