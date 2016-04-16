Rails.application.routes.draw do
  namespace :api do
    resources :posts
    resources :images
    resources :related_posts, only: %i(show)
    resources :category_posts, only: %i(show)
    resources :sessions
  end

  namespace :admin do
    resources :posts
  end

  get '/posts/:id', to: 'posts#show'
  root to: 'homes#index'
end
