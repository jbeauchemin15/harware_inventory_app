Rails.application.routes.draw do
  resources :entries
  resources :users, except: [:new]

  #this was my previous root before login feature
  #root to: "entries#index"

  #new root to force login
  root to: "sessions#new"

  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end
