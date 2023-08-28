# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :backoffice do
    get 'dashboard/index'
    resources :users
    resources :admins
  end
  devise_for :admins
  devise_for :users

  namespace :api do 
    namespace :v1 do
      resources :users, defaults: { format: 'json'}
    end
  end
  root 'backoffice/dashboard#index'
end
