Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resource :users

  put "users/:id", to: "users#edit"
  get "users/:id", to: "users#index"
  delete "users/:id", to: "users#delete"
end
