class Ingredient < ApplicationRecord
  has_many :dish_ingredients
  has_many :dishes, through: :dish_ingredients
  has_many :ingredient_measures
  has_many :measures, through: :ingredient_measures
end
