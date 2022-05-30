# frozen_string_literal: true

class Ingredient < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  has_many :dish_ingredients
  has_many :dishes, through: :dish_ingredients
  has_many :ingredient_measures, dependent: :destroy
  has_many :measures, through: :ingredient_measures
  belongs_to :user

  def save_measures(measures_ids)
    result = true
    IngredientMeasure.transaction do
      measures_ids.each do |measure_id|
        new_ingredient_measure = IngredientMeasure.new(measure_id: measure_id, ingredient_id:id)
        unless new_ingredient_measure.save
          result = false
          raise ActiveRecord::Rollback, "Ingredient measure not saved"
        end
      end
    end
    result
  end
end
