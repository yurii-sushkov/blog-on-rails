Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :articles do
    resources :comments, only: %i[create destroy]
  end
  resources :users
  get 'articles/index'
  root to: 'articles#index'
end
