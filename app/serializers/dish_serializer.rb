class DishSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :recipe, :image, :dish_ingredients, :user_id #, :users_ids
  

    def dish_ingredients
      self.object.dish_ingredients.map do |dish_ingredient|
         { 
           ingredient_id: dish_ingredient.ingredient.id,
           ingredient_name: dish_ingredient.ingredient.name,
           ingredient_image: dish_ingredient.ingredient.image,
           measure_id: dish_ingredient.measure_id,
           quantity: dish_ingredient.quantity 
          }
      end
    end
end
