Rails.application.routes.draw do
  devise_for :charities, controllers: {
        sessions: 'charities/sessions',
        registrations: 'charities/registrations'
  } 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  get '/register', to: 'pages#register'

end
