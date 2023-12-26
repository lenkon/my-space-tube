# frozen_string_literal: true

Rails.application.routes.draw do
  resources :likes, only: [:create, :destroy]
  devise_for :users
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'posts#index'
  get 'posts/:id/download', to: 'posts#download', as: 'download_post'
  get 'pages/media'
end
