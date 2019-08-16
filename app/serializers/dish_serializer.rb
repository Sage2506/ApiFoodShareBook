class DishSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :recipe, :image #, :users_ids
  has_many :dish_ingredients
    # def users_ids
    #   object.users.size
    # end
end
