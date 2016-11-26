Rails.application.routes.draw do
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

  resources :leagues
  resources :averages
  resources :teams
  resources :matches
  resources :weeks
  resources :leagues
  resources :seasons

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
