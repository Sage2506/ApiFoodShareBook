class DishSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :recipe, :ingredient_ids, :image
  # has_many :ingredients

  def ingredient_ids
    object.ingredients.map(&:id)
  end
end
