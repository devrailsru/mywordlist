Rails.application.routes.draw do
  resources :words
  root 'words#index'
end
