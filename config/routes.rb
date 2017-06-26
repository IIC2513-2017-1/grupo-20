Rails.application.routes.draw do
  get 'sessions/new'

  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'

  get '/register', to: 'users#new'
  get '/rifas/:id/draw', to: 'rifas#draw', as: :rifas_draw
  get '/users/:user_id/followers', to: 'followers#create', as: :user_followers
  post '/numeros/:id', to: 'numeros#aprove', as: :aprove_compra
  post 'rifas/:rifa_id/numeros/:num_id', to: 'numeros#create', as: :create_number
  post '/users/:id', to: 'ratings#create', as: :create_rating
  get '/rifas/:id/comment', to: 'comments#new', as: :new_comment
  post '/rifas/:id/comment', to: 'comments#create', as: :create_comment
  root 'home#index'
  get '/users/:id/own', to: 'users#own', as: :user_own_raffles
  get '/users/:id/bought', to: 'users#bought', as: :user_bought_raffles
  get '/users/:id/processing', to: 'users#processing', as: :user_processing_raffles
  resources :users do
    resources :rifas
  end
  resources :rifas do
    resources :prizes
  end
  resources :rifas do
    resources :numeros
  end

  resources :followers
  #delete '/followers', to: 'followers#destroy', as: :user_follower_destroy




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
