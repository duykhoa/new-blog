Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    resources :posts do
      get 'delete', to: 'posts#destroy'
      post 'update', to: 'posts#update'
    end

    resources :images
    resources :related_posts, only: %i(show)
    resources :category_posts, only: %i(show)
  end

  namespace :admin do
    root to: 'posts#index'

    resources :posts
  end

  get '/posts/:id', to: 'posts#show'
  root to: 'homes#index'
end
