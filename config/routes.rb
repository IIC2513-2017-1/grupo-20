Rails.application.routes.draw do

  get 'signin/signin'

  get 'login/login'

  root 'welcome#homepage'
  #get 'welcome/homepage'

  # resources :users, param: :username do
  #   resources :rifas
  # end
  resources :users, param: :username
  resources :rifas
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
