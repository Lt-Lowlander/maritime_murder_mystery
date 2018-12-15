Rails.application.routes.draw do
  root 'party#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resources :rules, only: [:index]
  resources :premise, except: [:show]

  namespace :api do
    namespace :v1 do
      resources :factions
      resources :users
    end
  end
end
