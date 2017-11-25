Rails.application.routes.draw do


  root to: 'pages#home'

  get '/register', to: 'pages#register'
  get '/login', to: 'pages#login'
  
  resources :profiles, only: [:new, :create, :edit, :update]
  resources :products, only: [:index]
  resource :package, only: [:show]
  resources :package_items, only: [:create, :update, :destroy]
  
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
  } 

end