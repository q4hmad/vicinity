Rails.application.routes.draw do

  root 'main#index'
  devise_for :users
  get 'main/about'
  get 'main/amenities'


  resources :services



end
