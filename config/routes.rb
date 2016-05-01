Rails.application.routes.draw do
  namespace :api do
    resources :posts
    resources :images
    resources :related_posts, only: %i(show)
    resources :category_posts, only: %i(show)
  end

  namespace :admin do
    resources :posts
  end

  resources :sessions

  get '/posts/:id', to: 'posts#show'
  root to: 'homes#index'
end
