Rails.application.routes.draw do
  devise_for :users
  get 'peersons/profile'
  root 'welcome#welcome'
  get 'about_us/about_us'
  resources :recipes  
end

