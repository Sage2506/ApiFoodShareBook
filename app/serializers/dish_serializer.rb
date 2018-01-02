class DishSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :recipe, :ingredient_ids, :image, :users_ids
  # has_many :ingredients

  def ingredient_ids
    object.ingredients.map(&:id)
  end
  def users_ids
    object.users.size
  end

end
