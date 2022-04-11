Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "grandparents", to: "grandparents#index"
  # make sure "new" route is above "show" route when we get to that.
  get "grandparents/new", to: "grandparents#new"
  post "grandparents", to: "grandparents#create"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
