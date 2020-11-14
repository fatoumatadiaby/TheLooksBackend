Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
     resources :product_looks
     resources :looks
     resources :products
     resources :users 
    end
  end
end
