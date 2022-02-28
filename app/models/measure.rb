# frozen_string_literal: true

class Measure < ApplicationRecord
  has_many :ingredient_measures, dependent: :destroy
  has_many :ingredients, through: :ingredient_measures
  belongs_to :dish_ingredients
end
