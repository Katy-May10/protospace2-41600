Rails.application.routes.draw do
  devise_for :users
  get 'prototype/users'
  root to: "prototypes#index"
  resources :users, only: [:new, :create, :show]
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create]
  end
end
