Rails.application.routes.draw do

  devise_for :users

  root to: 'main#index'

  resources :product, only: [:show]
  resources :category, only: [:show]
  resources :search, only: [:index]
end
