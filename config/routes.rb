Rails.application.routes.draw do
  devise_for :businesses, controllers: {
        sessions: 'businesses/sessions',
        registrations: 'businesses/registrations'
  }

  devise_for :charities, controllers: {
        sessions: 'charities/sessions',
        registrations: 'charities/registrations'
  } 

  resources :charities
  resources :charity_profiles

  root to: 'pages#home'

  get '/register', to: 'pages#register'
  get '/login', to: 'pages#login'

end
