Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

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
    get "/signup", to: "users#new"
    get "/login", to: "sessions#new"
    post "/sessions", to: "sessions#create"
    delete "/sessions", to: "sessions#destroy"

end
