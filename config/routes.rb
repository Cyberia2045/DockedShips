Rails.application.routes.draw do
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

<<<<<<< HEAD
  get 'users/new'

  devise_for :users 
  resources :boats



  get 'sessions/new'

  get 'home/index'

  root 'users#index'
=======
root to: "home#index"

resources :users

devise_for :views
get "user/new"

devise_for :users, :controllers => { registrations: "registrations" }

get "session/new"
>>>>>>> origin/master

end
