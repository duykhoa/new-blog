Rails.application.routes.draw do
  namespace :api do
    resources :posts
    resource :related_posts, only: %i(show)
  end
end
