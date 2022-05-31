# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'messages/index'
  # get 'educations/index'
  # get 'posts/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'users#index'

  resources :users
  resources :comments
  resources :posts
  resources :likes, only: %i[create destroy]
  resources :friendships
  resources :educations
  resources :skills
  resources :experiences
  resources :messages
end
