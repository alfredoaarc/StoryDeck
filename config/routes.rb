Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Todo
  # Take unauthenticated users to home#index
  # Take authenticated users to dashboard

  resources :businesses do
    resources :stories, only: [:index, :new, :create]
  end
  resources :chatrooms do
    resources :messages
  end

  get "dashboard", to: 'pages#dashboard'
end
