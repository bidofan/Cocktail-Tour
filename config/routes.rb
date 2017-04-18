Rails.application.routes.draw do
  devise_for :users
  get 'peersons/profile'
  root 'welcome#welcome'
<<<<<<< HEAD
  get 'about_us/about_us'
  resources :recipes  
end
=======
	resources :recipes
 end
>>>>>>> 15531e54218294c28e3d3c070a0a2dc186cfbb6e
