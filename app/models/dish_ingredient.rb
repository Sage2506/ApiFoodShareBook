class DishIngredient < ApplicationRecord
  belongs_to :dish
  belongs_to :ingredient
  scope :by_date, -> { order(created_date: :desc) }
end
