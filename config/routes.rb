Rails.application.routes.draw do
 
 
 
  delete 'tasks/destroy'

  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :tasks
  get 'signup', to: 'users#new'
  
  resources :users, only: [:index, :show, :new, :create]
  resources :tasks, only: [:create, :destroy]
end