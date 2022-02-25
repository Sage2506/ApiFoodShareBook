class Dish < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :description
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

  def to_list
    Hash[dish_ingredients.collect { |dish_ingredient| [dish_ingredient.ingredient_id, to_list_item(dish_ingredient) ] }]
  end

  def to_list_item(dish_ingredient)
    { "name" => dish_ingredient.ingredient.name, "quantity" => dish_ingredient.amount}
  end

end
