Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items
  resources :kantos
  resources :hokkaidos
  resources :touhokus
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
