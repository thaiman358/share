Rails.application.routes.draw do
  resources:tests
  resources:beens
  resources:mypages
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
