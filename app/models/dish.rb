class Dish < ApplicationRecord
  has_many :dish_ingredients
  has_many :ingredients, through: :dish_ingredients
end
