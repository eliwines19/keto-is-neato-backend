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
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"

end