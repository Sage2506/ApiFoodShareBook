Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      #Users
      resources :users, only: %i[index create update show] do
        collection do
          post 'login'
          get 'current_user_data'
        end
      end

      resources :users do
        get 'show'
        put 'update_permissions'
        get 'permissions'
      end

      #Dishes
      resources :dishes, only: %i[index create destroy update show]

      #Dish ingredients
      resources :dish_ingredients, only: %i[index create destroy show]

      #Ingredients
      resources :ingredients, only: %i[index create destroy update show]

      #Ingredient Measures
      resources :ingredient_measures, only: %i[index create show]

      #Measures
      resources :measures, only: %i[index show update]

      #Permissions
      resources :permissions, only: %i[index create update show]

      #Permission Types
      resources :permission_types, only: %i[index create]
      resources :permission_types do
        get 'current_user_permissions'
      end


      #Permissions
      resources :user_permissions, only: %i[create destroy]

      #Roles
      resources :roles, only: %i[index create show]
    end
  end
end
