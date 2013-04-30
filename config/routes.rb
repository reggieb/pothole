Pothole::Application.routes.draw do
  resources :road_defects

  root :to => 'road_defects#index'


end
