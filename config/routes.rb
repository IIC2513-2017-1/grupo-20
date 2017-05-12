Rails.application.routes.draw do
  get 'sessions/new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root 'home#index'
  resources :users do
    resources :rifas
  end
  resources :rifas do
    resources :prizes
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
