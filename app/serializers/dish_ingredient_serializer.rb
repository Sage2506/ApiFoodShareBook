class DishIngredientSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :measure, :ingredient

  def measure
    object.measure
  end

  def ingredient
    object.ingredient
  end
end