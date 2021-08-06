Rails.application.routes.draw do
  resources :projects
  resources :categories
  resources :access_levels
  devise_for :users
  resources :reproducibilities
  resources :severities
  resources :priorities
  resources :statuses
  resources :issues
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
