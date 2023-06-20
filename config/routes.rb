Rails.application.routes.draw do

    root 'api/v1/recipes#index'

    namespace :api do
      namespace :v1 do
        resources :recipes
        resources only: [:create, :destroy]
        resources :categories
        resources only: [:create, :destroy]
      end
    end

    resources :users, only: [:create, :show]
    get "/login", to: "sessions#new"
    post "/sessions", to: "sessions#create"
    delete "/sessions", to: "sessions#destroy"

end