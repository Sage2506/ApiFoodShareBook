class AddUniquenesIndexIngredientName < ActiveRecord::Migration[5.1]
  def change
    add_index :ingredients, :name, unique: true
  end
end
