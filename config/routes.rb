Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  get 'about', to: 'pages#about'
  get "signup", to: "users#new"
  get "create", to: "users#create"
  resources :users, except: [:new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
