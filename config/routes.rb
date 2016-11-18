Rails.application.routes.draw do
  resources :teams
  resources :matches
  resources :weeks
  devise_for :users

  root to: 'home#index'


resources :leagues do
  resources :seasons, shallow: true
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
