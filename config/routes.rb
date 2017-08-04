Rails.application.routes.draw do

  devise_for :admins
	resources :subscribes
	resources :fake_uis, only: [:index]

	root "homes#index"
	get 'admins', to: 'subscribes#index', as: ''

end
