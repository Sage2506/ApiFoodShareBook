class IngredientMeasureSerializer < ActiveModel::Serializer
  attributes :id

  has_one :measure
  has_one :ingredient
end
