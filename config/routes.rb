Rails.application.routes.draw do
  namespace :wizards do
    namespace :leagues do
      get 'leagues/new'
    end
  end

  namespace :wizards do
    namespace :leagues do
      get 'leagues/create'
    end
  end

  devise_for :users

  root to: 'home#index'

  namespace :admin do
    resources :games
    resources :averages
    resources :teams
    resources :matches
    resources :weeks
    resources :leagues
    resources :seasons
    resources :users
    get '/', to: 'dashboard#show'
  end

  namespace :wizards do
    namespace :leagues do
      resources :leagues, only: [:new, :create]
      resources :seasons, only: [:new, :create]
      resources :teams, only: [:new, :create]
    end
  end

  resources :leagues
  resources :averages
  resources :teams
  resources :matches
  resources :weeks
  resources :leagues
  resources :seasons

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
