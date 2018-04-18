Rails.application.routes.draw do
  resources :words
  root 'words#index'
  get 'results', to: 'results#index', as: 'results'
end
