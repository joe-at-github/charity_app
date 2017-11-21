Rails.application.routes.draw do
  devise_for :businesses, controllers: {
        sessions: 'businesses/sessions',
        registrations: 'businesses/registrations'
  }

  devise_for :charities, controllers: {
        sessions: 'charities/sessions',
        registrations: 'charities/registrations'
  } 

  # devise_scope :charity do
  #   get 'sign_in', to: 'charities/sessions#new', as: :new_charity_session
  #   post 'sign_in', to: 'charities/sessions#create', as: :charity_session
  #   get 'sign_up', to: 'charities/registrations#new', as: :new_charity_registration
  #   post 'sign_up', to: 'charities/registrations#create', as: :charity_registration
  #   get 'password/new', to: 'devise/passwords#new', as: :new_charity_password
  #   post 'password', to: 'devise/passwords#create'
  # end  

  resources :charities, only: [:show]
  resources :charity_profiles, only: [:show, :new, :create]


  resources :business_profiles, only: [:show, :new, :create]

  root to: 'pages#home'

  get '/register', to: 'pages#register'
  get '/login', to: 'pages#login'

end
