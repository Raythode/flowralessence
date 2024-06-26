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

  get "/checkout" => "orders#checkout", as: :checkout
  post "/checkout" => "orders#create"

  get "/orders" => "orders#index", as: :orders
  get "/orders/:order_number" => "orders#show", as: :order
  post "/orders/:order_number/update-status/:status_id" => "orders#update", as: :update_order

  get "/about-flowers" => "about#about_flowers", as: :about_flowers
  get "/about-flowers/:id/edit" => "about#edit", as: :edit_about_flower
  post "/about-flowers/:id/edit" => "about#update", as: :update_about_flower
  post "/about-flowers/ask-question" => "about#ask_question", as: :ask_question
  post "/about-flowers/answer-question" => "about#answer_question", as: :answer_question

  post "/add-new-flower" => "flowers#create", as: :add_new_flower
  post "/edit-flower" => "flowers#update", as: :edit_flower
  delete "/delete-flower" => "flowers#destroy", as: :delete_flower

  get "/dashboard" => "dashboard#index", as: :dashboard
end
