Rails.application.routes.draw do
  resources:tops
  resources:restaurants
  resources:forms
  resources:visiteds
  resources:favorites
  resources:articles
  resources:preferences
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
