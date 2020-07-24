class RemoveMeasureFromDishIngredient < ActiveRecord::Migration[5.1]
  def change
    remove_column :dish_ingredients, :measure
  end
end
