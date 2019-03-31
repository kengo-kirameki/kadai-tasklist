Rails.application.routes.draw do

  get 'login', to: 'session#new'
  
  post 'login', to: 'session#create'
  
  delete 'logout', to: 'session#destroy'
   
  root to: 'toppages#index'
  
  get 'signup', to: 'users#new'
  
  resources :tasks, only: [:show,:new,:create,:edit,:update,:destroy]
  resources :users, only: [:index,:show,:new,:create]
  
end
