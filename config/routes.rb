Rails.application.routes.draw do

  devise_for :admins
	resources :subscribes

	root "subscribes#new"
	get 'admins', to: 'subscribes#index', as: ''

end
