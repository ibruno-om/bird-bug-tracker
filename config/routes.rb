# frozen_string_literal: true

Rails.application.routes.draw do
  root 'issues#index'

  devise_for :users, controllers: { sessions: 'users/sessions' }

  resources :projects
  resources :categories
  resources :access_levels
  resources :reproducibilities
  resources :severities
  resources :priorities
  resources :statuses
  resources :issues
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
