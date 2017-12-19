Rails.application.routes.draw do
  resources :services
  root 'main#index'
end
