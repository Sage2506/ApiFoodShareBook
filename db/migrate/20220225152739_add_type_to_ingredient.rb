class AddTypeToIngredient < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :type, :integer
  end
end
