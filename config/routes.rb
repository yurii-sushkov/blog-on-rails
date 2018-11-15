Rails.application.routes.draw do
  devise_for :admins
	get 'welcome/index'

	resources :articles do
		resources :comments
	end

	root 'welcome#index'
	devise_for :users, :controllers => { 
		:passwords => "users/passwords",
		:registrations => "users/registrations",
		:sessions => "users/sessions"
       	}

	#resources :users
end
