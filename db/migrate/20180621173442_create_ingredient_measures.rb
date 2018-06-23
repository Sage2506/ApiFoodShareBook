class CreateIngredientMeasures < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredient_measures do |t|

      t.timestamps
    end
  end
end
