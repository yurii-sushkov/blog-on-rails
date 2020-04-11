Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :articles
  resources :users
  get 'articles/index'
  root to: 'articles#index'
end
