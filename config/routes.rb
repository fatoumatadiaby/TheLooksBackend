Rails.application.routes.draw do
  # get "/api/v1/login", to: "sessions#create"
  # namespace :api do
  #   namespace :v1 do
    resources :looks do
      resources :products 
    end
    resources :products, only: [:destroy]
end
