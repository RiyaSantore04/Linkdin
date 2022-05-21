Rails.application.routes.draw do
  get 'educations/index'
  # get 'friends/index'
  # get 'friends/destroy'
  # get 'deshboard/index'
  get 'posts/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "users#index"

  resources :users
  resources :comments
  resources :posts 
  resources :likes, only: [:create, :destroy]
  resources :friendships
  resources :educations
  resources :skills
  resources :experiences
  
  # delete 'likes/:id', to: 'likes#destroy'
  # get '/friends/:id', to: 'friendships#friend'
  # put "/post/:id/like" to: "posts#like", as: "like"

  
end