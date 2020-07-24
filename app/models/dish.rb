class Dish < ApplicationRecord
  has_many :dish_ingredients, dependent: :destroy
  has_many :ingredients, through: :dish_ingredients
  has_many :user_likes_dishes
  has_many :users, through: :user_likes_dishes

  def save_ingredients(dish_ingredients)
    result = true
    DishIngredient.transaction do
      dish_ingredients.each do |dish_ingredient|
        new_dish_ingredient = DishIngredient.new(
          dish_id: self.id, 
          ingredient_id: dish_ingredient[:ingredient_id], 
          quantity: dish_ingredient[:quantity],
          measure_id: dish_ingredient[:measure_id]
        )
        if !new_dish_ingredient.save
          result = false
          raise ActiveRecord::Rollback, "Ingredient not saved"
        end
      end
    end
    return result
  end

end
