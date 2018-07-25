Rails.application.routes.draw do
  resources:tops
  get '/restaurants/japanese', to:'restaurants#japanese'
  get '/restaurants/western', to:'restaurants#western'
  get '/restaurants/italian', to:'restaurants#italian'
  get '/restaurants/french', to:'restaurants#french'
  get '/restaurants/chinese', to:'restaurants#chinese'
  get '/restaurants/others', to:'restaurants#others'
  get 'logout' => 'sessions#destroy'
  resources:restaurants
  resources:forms
  resources:visits
  resources:favorites
  resources:reads
  resources:ownprefers
  resources:preferences
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
end
