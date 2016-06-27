Rails.application.routes.draw do

  root "pages#index"

  get    "signin"  => "sessions#new"
  post   "signin"  => "sessions#create"
  delete "signout" => "sessions#destroy"

  resources :photos
  resources :users

end
