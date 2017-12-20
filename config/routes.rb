Rails.application.routes.draw do


  resources :com_batigrados
  resources :batigrados
  resources :ticket_repas
  resources :repasgccs
  resources :etats
  resources :enseignants, path: "encadrants"
  resources :eleves
  get '/eleves/:id/valid(.:format)', to: 'eleves#valid', as: 'valid_elefe'
  root 'application#accueil'

  devise_for :users, path_names: { sign_in: 'connexion', sign_out: 'deconnexion', sign_up: 'inscription'}, :controllers => { :registrations => "registrations" }



  resources :presences
  resources :cours

  get '/stateleve', to: 'eleves#stateleve'

  get '/panier', to: 'application#panier'
  post '/panier', to: 'application#panier_valid'
  get '/panier_confirm', to: 'application#panier_confirm'
  post '/valide', to: 'application#valide'

  get '/presencesel', to: 'presences#presencesel'
  get '/consulpres', to: 'presences#consulpres'
  get '/prespdf', to: 'presences#prespdf'
  post '/presencesel', to: 'presences#new'
  post '/consulpres', to: 'presences#index'

  get '/presence_view', to: 'presences#show'

  post '/com_batigrados/new', to: 'com_batigrados#new'

  get '/gestion/paiements', to: 'gestion#paiements'
  get '/gestion/commandes', to: 'gestion#commandes'
  get '/gestion/tableau', to: 'gestion#tableau'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
