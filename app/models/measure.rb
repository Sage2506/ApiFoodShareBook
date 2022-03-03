# frozen_string_literal: true

class Measure < ApplicationRecord
  has_many :ingredient_measures, dependent: :destroy
  has_many :ingredients, through: :ingredient_measures
  has_many :dish_ingredients
  enum group: { solid: 1, liquid: 2, piece: 3 }
end
