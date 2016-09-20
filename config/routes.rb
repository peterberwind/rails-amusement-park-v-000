Rails.application.routes.draw do
  root 'static#home'
  resources :users

  # sessions
  get "/signin", to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"

end
