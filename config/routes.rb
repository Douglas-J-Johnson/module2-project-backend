Rails.application.routes.draw do
  resources :ride_attendances
  resources :photos
  resources :rides
  resources :routes
  resources :motorcycles
  resources :riders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
