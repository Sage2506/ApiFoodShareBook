class UserSerializer < ActiveModel::Serializer
  attributes :id, :dishes_ids
  def dishes_ids
    object.dishes.map(&:id)
  end
end
