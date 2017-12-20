Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
  namespace :v1 do

    resources :dishes, only: [:index, :create, :destroy, :update]
    resources :dishes do
      get 'show'
    end

    resources :ingredients, only: [:index, :create, :update]
    resources :ingredients do
      get 'show'
    end

  resources :dish_ingredients, only: [:index, :create, :destroy]
  resources :dish_ingredients do
    get 'show'
  end

end
end
end
