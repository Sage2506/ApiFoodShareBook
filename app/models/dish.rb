class Dish < ApplicationRecord
  has_many :dish_ingredients
  has_many :ingredients, through: :dish_ingredients
  has_many :user_likes_dishes
  has_many :users, through: :user_likes_dishes
end
