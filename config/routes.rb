Rails.application.routes.draw do
  resources :product_looks
  resources :looks
  resources :products
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
