Rails.application.routes.draw do

  get 'login/login'

  root 'welcome#homepage'
  #get 'welcome/homepage'


  resources :users do
    resources :rifas
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
