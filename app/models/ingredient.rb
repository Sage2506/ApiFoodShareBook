class Ingredient < ApplicationRecord
  has_many :dish_ingredients
  has_many :dishes, through: :dish_ingredients, :dependent => :restrict_with_error
  has_many :ingredient_measures
  has_many :measures, through: :ingredient_measures

  def save_measures(measures_ids)
    result = true
    IngredientMeasure.transaction do
      measures_ids.each do |measure_id|
        new_ingredient_measure = IngredientMeasure.new(
          measure_id: measure_id,
          ingredient_id: self.id
        )
        if(!new_ingredient_measure.save)
          result = false
          raise ActiveRecord::Rollback, "Ingredient measure not saved"
        end
      end
    end
    return result
  end
  
end
