Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

    root 'api/v1/recipes#index'

    namespace :api do
      namespace :v1 do
        resources :recipes
        resources only: [:create, :destroy]
      end
    end

end
