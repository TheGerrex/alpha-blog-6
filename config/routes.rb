Rails.application.routes.draw do
  resources :articles
  resources :users, except: [:new]
  resources :categories, except: [:destroy]
  root 'pages#home'
  get 'about', to: 'pages#about'
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  # get "create", to: "users#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
