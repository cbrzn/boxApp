Rails.application.routes.draw do
  root 'static_pages#home'
  get '/signup',  to: 'users#new'
  get '/contact', to: 'static_pages#contact'
  get '/about',   to: 'static_pages#about'
end
