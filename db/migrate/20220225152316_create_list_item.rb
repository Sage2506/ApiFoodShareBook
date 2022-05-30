class CreateListItem < ActiveRecord::Migration[5.1]
  def change
    create_table :list_items do |t|
      t.integer :ingredient_id
      t.string :name
      t.integer :quantity
      t.integer :status, :default => 0
      t.references :list, index:true
      t.timestamps
    end
  end
end
