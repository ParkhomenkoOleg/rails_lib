Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'home/index'
  root "home#index"
  devise_for :users
  # resources :users
  resources :card_readers
  resources :genres
  resources :authors
  resources :books
  # resources :libraries

  get "libraries", to: "libraries#index"
  get "libraries/:id", to: "libraries#show"
  get "libraries/export.csv", to: "libraries#export_csv"
  post "libraries", to: "libraries#search"


  get 'download/libraries/pdf/:id', to: "libraries#pdf", as: "libraries_pdf"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
