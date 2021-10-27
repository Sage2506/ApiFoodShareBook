Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      #Users
      resources :users, only: [:index, :create,:update, :show] do
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
      resources :dishes, only: [:index, :create, :destroy, :update]

      resources :dishes do
        get 'show'
      end

      #Dish ingredients
      resources :dish_ingredients, only: [:index, :create, :destroy]

      resources :dish_ingredients do
        get 'show'
      end

      #Ingredients
      resources :ingredients, only: [:index, :create, :destroy, :update]

      resources :ingredients do
        get 'show'
      end

      #Ingredient Measures
      resources :ingredient_measures, only: [:index, :create]

      resources :ingredient_measures do
        get 'show'
      end

      #Measures
      resources :measures, only: [:index]

      #Permissions
      resources :permissions, only:[:index, :create, :update]

      resources :permissions do
        get 'show'
      end

      #Permission Types
      resources :permission_types, only:[:index, :create]
      resources :permission_types do
        get 'current_user_permissions'
      end

      #Permissions
      resources :user_permissions, only:[:create, :destroy]

      #Roles
      resources :roles, only:[:index, :create]

      resources :roles do
        get 'show'
      end
    end
  end
end
