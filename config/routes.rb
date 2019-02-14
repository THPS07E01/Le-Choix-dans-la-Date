Rails.application.routes.draw do
  root 'events#index'
  devise_for :users
  resources :events
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :charges
  resources :teams, only: [:index]
end
