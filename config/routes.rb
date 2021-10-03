Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  use_doorkeeper

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  root to: 'main#index'

  resource :cart, only: %i[destroy show] do
    resources :items, only: %i[destroy create]
  end

  resources :product, only: [:show]
  resources :category, only: [:show]
  resources :search, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :profile, only: [:index]
      resources :products, only: [:index]

    end
  end
end
