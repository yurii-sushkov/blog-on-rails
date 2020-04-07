Rails.application.routes.draw do
  devise_for :users
  resources :articles
  resources :users
  get 'articles/index'
  root to: 'articles#index'
end
