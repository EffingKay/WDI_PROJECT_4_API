Rails.application.routes.draw do
  resources :cards, only: [:create, :index, :update, :destroy]
  resources :rooms, only: [:index, :show, :create, :destroy]
  resources :users, only: [:index, :show]

  # post 'cards', to: 'cards#create'
  # get 'cards', to: 'cards#index'
  # delete 'cards/:id', to: 'cards#destroy'
  # patch 'cards/:id', to: 'cards#update'
  # put 'cards/:id', to: 'cards#update'

  # get 'rooms', to: 'rooms#index'
  # get 'rooms/:id', to: 'rooms#show'
  # post 'rooms', to: 'rooms#create'
  # delete 'rooms/:id', to: 'rooms#destroy'
 
  # get 'users', to: 'users#index'
  # get 'users/:id', to: 'users#show'

  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'

  mount ActionCable.server => '/cable'
end
