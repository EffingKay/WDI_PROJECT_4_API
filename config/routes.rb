Rails.application.routes.draw do

  get 'rooms', to: 'rooms#index'
  get 'rooms/:id', to: 'rooms#show'
  post 'rooms', to: 'rooms#create'

  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
