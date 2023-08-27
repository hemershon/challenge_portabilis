# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :backoffice do
    get 'dashboard/index'
    resources :users, only: [:new, :create]
  end
  devise_for :admins
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'backoffice/dashboard#index'
end
