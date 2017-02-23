Rails.application.routes.draw do
  resources :cards, only: [:create, :index, :update, :destroy, :show]
  resources :rooms, only: [:index, :show, :create, :destroy]
  resources :users, only: [:index, :show]

  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'

  mount ActionCable.server => '/cable'
end
