class AddColumnToIngredientMeasure < ActiveRecord::Migration[5.1]
  def change
    add_reference :ingredient_measures, :ingredient, foreign_key: true
    add_reference :ingredient_measures, :measure, foreign_key: true
  end
end
