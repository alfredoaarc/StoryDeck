Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "dashboard", to: 'pages#dashboard'

  patch "campaigns/:id/accepting", to: "campaigns#accepting", as: :accept_request
  patch "campaigns/:id/denying", to: "campaigns#denying", as: :deny_request
  # Todo
  # Take unauthenticated users to home#index
  # Take authenticated users to dashboard

  resources :businesses, only: [:index, :edit, :update, :destroy, :new] do
    resources :stories, except: [:show]
  end
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  resources :stories, only: [:show, :index] do
    resources :campaigns, only: [:new, :create]
  end

  resources :campaigns, only: [:destroy]

  resources :creators

  resources :category

  resources :chatrooms, only: :show do
  resources :messages, only: :create
end
end
