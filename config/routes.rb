Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
  } 

  resources :users, only: [:show]
  resources :profiles, only: [:new, :create, :edit, :update]

  root to: 'pages#home'

  get '/register', to: 'pages#register'
  get '/login', to: 'pages#login'

end



  # devise_scope :charity do
  #   get 'sign_in', to: 'charities/sessions#new', as: :new_charity_session
  #   post 'sign_in', to: 'charities/sessions#create', as: :charity_session
  #   get 'sign_up', to: 'charities/registrations#new', as: :new_charity_registration
  #   post 'sign_up', to: 'charities/registrations#create', as: :charity_registration
  #   get 'password/new', to: 'devise/passwords#new', as: :new_charity_password
  #   post 'password', to: 'devise/passwords#create'
  # end  
