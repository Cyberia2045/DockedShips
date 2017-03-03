Rails.application.routes.draw do
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'users/new'

  devise_for :users 
  resources :boats
  resources :jobs



  get 'sessions/new'

  get 'home/index'

  root 'users#index'

end
