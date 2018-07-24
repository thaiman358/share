Rails.application.routes.draw do
  get 'form/index'

  get 'form/new'

  get 'form/create'

  get 'form/show'

  get 'form/confirm'

  get 'form/edit'

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
