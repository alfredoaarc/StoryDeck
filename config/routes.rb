Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :businesses do
    resources :stories, only: [:index, :show, :new, :create]
  end
  resources :chatrooms do
    resources :messages
  end
  # resources :campaigns, only: [:index, :show, :new, :create]
end
