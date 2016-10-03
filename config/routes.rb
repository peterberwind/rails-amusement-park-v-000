Rails.application.routes.draw do
  root 'static#home'
  resources :users
  resources :attractions

  # sessions
  get "/signin", to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"

  # rides
  post "/rides/new", to: "rides#new"

end
