Rails.application.routes.draw do

  devise_for :admins
	resources :subscribes

	root "homes#index"
	get 'admins', to: 'subscribes#index', as: ''

end
