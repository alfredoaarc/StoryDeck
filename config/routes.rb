Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "dashboard", to: 'pages#dashboard'

  # Todo
  # Take unauthenticated users to home#index
  # Take authenticated users to dashboard

  resources :businesses, only: [:index, :edit, :update, :destroy] do
    resources :stories, except: [:show]
  end
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  resources :stories, only: [:show, :index] do
    resources :campaigns, only: [:new, :create]
  end

  resources :creators

  resources :category
end
