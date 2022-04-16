Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # Route to redirect user to dashboard upon successful sign in.
  get '/user' => "pages#dashboard", :as => :user_root

<<<<<<< HEAD
  resources :grandparents, only: %i[index show new create]

=======
  resources :grandparents, only: %i[index show new create] do
    resources :bookings, only: %i[new create edit update index]
  end  
>>>>>>> bacec774d82853cbb35bc61e3b3231d11bf17881
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
