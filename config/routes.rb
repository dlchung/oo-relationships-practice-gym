Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :locations
  resources :trainers
  resources :clients

  root to:'static#index'
end
