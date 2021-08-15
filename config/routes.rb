Rails.application.routes.draw do
  resources :payments
  resources :orders
  resources :digital_products
  resources :physical_products
  resources :products
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
