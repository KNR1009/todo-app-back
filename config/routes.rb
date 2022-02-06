Rails.application.routes.draw do
  resources :tasks
  resources :tags, only: [:index, :create]
end
