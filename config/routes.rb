Rails.application.routes.draw do

  devise_for :users

  root to: 'main#index'

  resource :cart, only: %i[destroy show] do
    resources :items, only: %i[destroy create]
  end

  resources :product, only: [:show]
  resources :category, only: [:show]
  resources :search, only: [:index]
end
