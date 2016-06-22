Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
  get 'welcome/index'
  resources :notes

  authenticated :user do 
  	root 'notes#index', as: "authenticated_root"
  end

  root 'welcome#index'


end
