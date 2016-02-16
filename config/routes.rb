Rails.application.routes.draw do
  namespace :api do
    resources :posts
    resources :related_posts, only: %i(show)
    resources :category_posts, only: %i(show)
  end

  root to: 'homes#index'
end
