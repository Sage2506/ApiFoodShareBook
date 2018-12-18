class AddMeasuresToDishIngredients < ActiveRecord::Migration[5.1]
  def change
    add_reference :dish_ingredients, :measure, foreign_key: true
  end
end
