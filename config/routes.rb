Rails.application.routes.draw do
  get 'okinawas/index'
  get 'kyusyus/index'
  get 'sikokus/index'
  get 'tyugokus/index'
  get 'kinkis/index'
  devise_for :users
  root to: 'items#index'
  resources :items
  resources :kantos
  resources :hokkaidos
  resources :touhokus
  resources :tyubus
  resources :kinkis
  resources :tyugokus
  resources :sikokus
  resources :kyusyus
  resources :okinawas
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
