Rails.application.routes.draw do
 
  resources :poems, only: [:show]
  resources :movies, only: [:show]
  resources :books, only: [:show]
  resources :musics, only: [:show]
  resources :arts, only: [:show]
  resources :mixes
  resources :users
  root 'welcome#index'
 
end
