Rails.application.routes.draw do
  root 'party#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :party
  resources :factions
  resources :rules, only: [:index]
  resources :narrative, except: [:show]
  resources :users, only: [:show] do
    resources :abilities, only: [:index]
    resources :goals, only: [:index]
    resources :connections, only: [:index]
    resources :secrets, only: [:index]
    resources :notes, only: [:index]
  end

  namespace :api do
    namespace :v1 do
      resources :narratives
      resources :rules
      resources :factions
      resources :users
    end
  end
end
