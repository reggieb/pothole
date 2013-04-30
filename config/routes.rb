Pothole::Application.routes.draw do

  resources :users, :only => [:index, :edit, :update]
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :road_defects

  root :to => 'road_defects#index'


end
