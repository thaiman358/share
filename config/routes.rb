Rails.application.routes.draw do
  resources:tops
  get '/restaurants/japanese', to:'restaurants#japanese'
  get '/restaurants/western', to:'restaurants#western'
  get '/restaurants/italian', to:'restaurants#italian'
  get '/restaurants/french', to:'restaurants#french'
  get '/restaurants/chinese', to:'restaurants#chinese'
  get '/restaurants/others', to:'restaurants#others'
  resources:restaurants
  resources:forms
  resources:visiteds
  resources:favorites
  resources:articles
  resources:ownprefers
  resources:preferences
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  
  
  post '/forms/reserve', to:'forms#reserve'
end
