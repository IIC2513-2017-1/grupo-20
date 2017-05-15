Rails.application.routes.draw do
  get 'sessions/new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'

  get '/register', to: 'users#new'
  get '/users/:user_id/followers', to: 'followers#create', as: :user_followers

  root 'home#index'
  resources :users do
    resources :rifas
  end
  resources :rifas do
    resources :prizes
  end
  resources :rifas do
    resources :numeros, only: [:new, :create]
  end
  resources :followers, only: [:destroy]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
