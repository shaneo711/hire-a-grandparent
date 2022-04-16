Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # Route to redirect user to dashboard upon successful sign in.
  get '/user' => "pages#dashboard", :as => :user_root

  resources :grandparents, only: %i[index show new create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
