Rails.application.routes.draw do
  root 'party#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :party
  resources :manifest
  resources :red_herring, only: [:index]
  resources :rules, only: [:index]
  resources :narrative, except: [:show]
  resources :users do
    resources :background, only: [:index]
    resources :abilities, only: [:index]
    resources :goals
    resources :connections, only: [:index]
    resources :secrets, only: [:index]
    resources :notes, only: [:index]
  end

  namespace :api do
    namespace :v1 do
      resources :narratives
      resources :rules
      resources :factions
      resources :users do
        resources :goals
        resources :abilities
        resources :notes
        resources :background
        resources :secrets
        resources :connections
      end
    end
  end
end
