Rails.application.routes.draw do
  get 'messages/new'
  get 'okinawas/index'
  get 'kyusyus/index'
  get 'sikokus/index'
  get 'tyugokus/index'
  get 'kinkis/index'
  devise_for :users
  root to: 'items#index'
  resources :items do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]
  end
  resources :kantos, only: :index
  resources :hokkaidos, only: :index
  resources :touhokus, only: :index
  resources :tyubus, only: :index
  resources :kinkis, only: :index
  resources :tyugokus, only: :index
  resources :sikokus, only: :index
  resources :kyusyus, only: :index
  resources :okinawas, only: :index
  resources :users, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
