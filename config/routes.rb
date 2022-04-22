Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # Route to redirect user to dashboard upon successful sign in.
  get '/user' => "pages#dashboard", :as => :user_root
  get '/dashboard' => "pages#dashboard"

  resources :notifications, only: %i[index]

  resources :grandparents do
    resources :bookings, only: %i[new create edit update index show]
    resources :reviews, only: %i[new create index]
  end
  

  resources :bookings, only: %i[destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
