Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  get "/" => "home#index", as: :root
  post "/add-to-cart" => "home#add_to_cart", as: :add_to_cart
  delete "/clear-cart" => "home#clear_cart", as: :clear_cart


  get "/sign-up" => "users#new", as: :sign_up
  post "/sign-up" => "users#create"

  delete "/sign-out" => "sessions#destroy", as: :sign_out

  get "/sign-in" => "sessions#new", as: :sign_in
  post "/sign-in" => "sessions#create"

end
