Rails.application.routes.draw do

  root 'static_pages#home'
  get    '/signup',               to: 'users#new'
  get    '/contact',              to: 'static_pages#contact'
  get    '/about',                to: 'static_pages#about'
  get    '/login',                to: 'sessions#new'
  post   '/login',                to: 'sessions#create'
  delete '/logout',               to: 'sessions#destroy'
  post   '/create',               to: 'bookings#create'
  delete '/destroy',              to: 'bookings#destroy'


  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :training
  resources :users
  resources :bookings
  end
