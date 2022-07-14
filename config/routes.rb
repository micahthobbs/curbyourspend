Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :items
  resources :profiles, only: [:index, :show]
  get "calendar", to: 'pages#calendar'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
