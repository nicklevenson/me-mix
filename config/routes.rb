Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  resources :poems, only: [:show]
  resources :movies, only: [:show]
  resources :books, only: [:show]
  resources :musics, only: [:show]
  resources :arts, only: [:show]
  resources :mixes
  resources :users
  root 'welcome#index'
 
end
