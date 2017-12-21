Rails.application.routes.draw do
  devise_for :users
  resources :services
  root 'main#index'
  


end
