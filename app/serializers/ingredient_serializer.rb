class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image
end
