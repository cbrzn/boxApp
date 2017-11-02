Rails.application.routes.draw do

  root 'boxes#index'
  get    '/signup',               to: 'users#new'
  get    '/contact',              to: 'static_pages#contact'
  get    '/about',                to: 'static_pages#about'
  get    '/login',                to: 'sessions#new'
  post   '/login',                to: 'sessions#create'
  delete '/logout',               to: 'sessions#destroy'


  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :users do
    resources :rms
  end
  resources :boxes do
    resources :wods
    resources :trainings do
      resources :guests
      resources :bookings
    end
  end
end
