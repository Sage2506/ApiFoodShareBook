class CreateDishIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :dish_ingredients do |t|
      t.references :dish, index:true
      t.references :ingredient, index:true
      t.timestamps
    end
  end
end
