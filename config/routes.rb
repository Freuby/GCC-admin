Rails.application.routes.draw do


  resources :eleves
  root 'application#accueil'

  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }


  resources :presences
  resources :cours
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
