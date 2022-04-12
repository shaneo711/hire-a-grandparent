Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "grandparents", to: "grandparents#index"
  get "grandparents/new", to: "grandparents#new"
  post "grandparents", to: "grandparents#create"
  get "grandparents/:id", to: "grandparents#show"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
