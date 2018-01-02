class AddQuantityAndMeasurementsToDishIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :dish_ingredients, :quantity, :float
    add_column :dish_ingredients, :measure, :int
  end
end
