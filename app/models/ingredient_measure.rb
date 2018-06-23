class IngredientMeasure < ApplicationRecord
  belongs_to :ingredient
  belongs_to :measure
  scope :by_date, -> {order(created_date: :desc)}
end
