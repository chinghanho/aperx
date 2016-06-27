Rails.application.routes.draw do

  root "pages#index"

  resources :photos
  resources :users

end
