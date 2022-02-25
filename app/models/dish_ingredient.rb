class DishIngredient < ApplicationRecord
  belongs_to :dish
  belongs_to :ingredient
  belongs_to :measure
  scope :by_date, -> { order(created_date: :desc) }

  def amount
    self.quantity
  end
end
