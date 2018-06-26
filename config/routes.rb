Rails.application.routes.draw do
  devise_for :users
  resources :words
  root 'pages#welcome'
  get 'results', to: 'results#index', as: 'results'
end
