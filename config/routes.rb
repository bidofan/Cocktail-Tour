Rails.application.routes.draw do
  devise_for :users
  get 'peersons/profile'

	root 'welcome#welcome'
	resources :recipes do
		resources :comments
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
