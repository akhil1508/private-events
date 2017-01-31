Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  post '/signup', to: 'users#create'
  get '/signup', to: 'users#show'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  resources :sessions, only: [:new, :create, :destroy]
  resources :events, only: [:new, :create, :show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
