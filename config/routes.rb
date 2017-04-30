Rails.application.routes.draw do
  get '/users' => 'users#index'
  get '/rifas' => 'rifas#index'
  get '/users/new' => 'users#new'
  post 'users' => 'users#create'
  get '/user/:id' => 'users#show', as: :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
