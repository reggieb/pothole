Pothole::Application.routes.draw do
  get "users/index"

  get "users/show"

#  devise_for :users
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :road_defects

  root :to => 'road_defects#index'


end
