class Measure < ApplicationRecord
  has_many :ingredient_measures
  has_many :ingredients, through: :ingredient_measures
end
