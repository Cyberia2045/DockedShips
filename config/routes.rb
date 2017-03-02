Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: "home#index"

resources :users

devise_for :views
get "user/new"

devise_for :users, :controllers => { registrations: "registrations" }

get "session/new"

end
