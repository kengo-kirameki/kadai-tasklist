Rails.application.routes.draw do

  get 'session/new'

  get 'session/create'

  get 'session/destroy'

  get 'login', to: 'session#new'
  
  post 'login', to: 'session#create'
  
  delete 'logout', to: 'session#destroy'
   
  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  root to: 'toppages#index'
  
  
  get 'signup', to: 'users#new'
  resources :tasks
  resources :users, only: [:index,:show,:new,:create]
  
end
