Pothole::Application.routes.draw do
  devise_for :users

  resources :road_defects

  root :to => 'road_defects#index'


end
