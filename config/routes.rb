Rails.application.routes.draw do


  resources :com_batigrados
  resources :batigrados
  resources :ticket_repas
  resources :repasgccs
  resources :etats
  resources :enseignants
  resources :eleves
  get '/eleves/:id/valid(.:format)', to: 'eleves#valid', as: 'valid_elefe'
  root 'application#accueil'

  devise_for :users, path_names: { sign_in: 'connexion', sign_out: 'deconnexion', sign_up: 'inscription'}, :controllers => { :registrations => "registrations" }



  resources :presences
  resources :cours

  get '/stateleve', to: 'eleves#stateleve'

  get '/presencesel', to: 'presences#presencesel'
  get '/consulpres', to: 'presences#consulpres'
  get '/prespdf', to: 'presences#prespdf'
  post '/presencesel', to: 'presences#new'
  post '/consulpres', to: 'presences#index'

  get '/presence_view', to: 'presences#show'

  post '/com_batigrados/new', to: 'com_batigrados#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
