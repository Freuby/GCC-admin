Rails.application.routes.draw do


  resources :com_batigrados
  resources :batigrados
  resources :ticket_repas
  resources :repasgccs
  resources :etats
  resources :enseignants
  resources :eleves
  root 'application#accueil'

  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }


  resources :presences
  resources :cours

  get '/presencesel', to: 'presences#presencesel'
  get '/consulpres', to: 'presences#consulpres'
  post '/presencesel', to: 'presences#new'
  post '/consulpres', to: 'presences#index'

  get '/presence_view', to: 'presences#show'

  post '/com_batigrados/new', to: 'com_batigrados#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
