class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image
  # has_many :dishes
end
