Rails.application.routes.draw do
  # get "/api/v1/login", to: "sessions#create"
  namespace :api do
    namespace :v1 do
     resources :product_looks
     resources :looks
     resources :products
     resources :users 
    end
  end
end
