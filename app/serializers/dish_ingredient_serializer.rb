class DishIngredientSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :measure, :ingredient

  def measure
    object.measure.slice('name')
  end

  def ingredient
    object.ingredient.slice('name','description','image')
  end
end