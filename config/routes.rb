Rails.application.routes.draw do
  # resources :categories
  devise_for :users
  get 'home/index'
  # get 'home/home'
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :admin do
    root to: 'home#index'
  end
end
