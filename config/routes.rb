Rails.application.routes.draw do


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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
