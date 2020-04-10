Rails.application.routes.draw do
  resources :evaluations
  get 'home/index'
  resources :questionnaires

  get '/rgpd', to: 'application#_rgpd'

  devise_for :users
  root 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
