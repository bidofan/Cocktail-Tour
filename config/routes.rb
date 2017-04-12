Rails.application.routes.draw do
  devise_for :users
  get 'peersons/profile'

	root 'welcome#welcome'
	resources :recipes
 end