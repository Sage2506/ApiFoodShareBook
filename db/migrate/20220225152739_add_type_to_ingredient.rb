class AddTypeToIngredient < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :group, :integer
  end
end
