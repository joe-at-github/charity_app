Rails.application.routes.draw do

  root to: 'pages#home'

  get '/register', to: 'pages#register'
  get '/login', to: 'pages#login'
  
  resources :profiles, only: [:new, :create, :edit, :update]
  
  resources :business_profiles, only: [:show]

  resources :products, only: [:index] do
    collection do
      get :package_item_form
    end
  end

  resources :packages, only: [:index, :show, :edit, :update]
  
  resources :package_items, only: [:create]
  
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
  } 

end