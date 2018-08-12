class DishSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :recipe, :image, :users_ids
  has_many :dish_ingredients


    def users_ids
      object.users.size
    end
    def dish_ingredients
      customized_dish_ingredients = []
      object.dish_ingredients.each do |dish_ingredient|
        custom_dish_ingredient = dish_ingredient.slice(:id, :measure, :quantity)
        custom_dish_ingredient[:ingredient] = dish_ingredient.ingredient.slice(:id, :name, :image)
        customized_dish_ingredients.push(custom_dish_ingredient)
      end
      return customized_dish_ingredients
    end
end
