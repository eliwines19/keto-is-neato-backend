Rails.application.routes.draw do

    root 'api/v1/recipes#index'

    namespace :api do
      namespace :v1 do
        resources :recipes, only: [:index, :show]
        resources :categories, only: [:index, :show]
        # resources :recipes
        # resources only: [:create, :destroy]
        # resources :categories
        # resources only: [:create, :destroy]
      end
    end

    resources :recipes, only: [:new, :create, :destroy]
    get "/recipes/home", to: "recipes#home"

    # get "/recipes/new", to: "recipes#new"

    resources :users, only: [:create, :show]
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    get "/logout", to: "sessions#destroy"

end