Rails.application.routes.draw do
  devise_for :users
  resources :words
  root 'words#index'
  get 'results', to: 'results#index', as: 'results'
end
