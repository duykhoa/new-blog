class Api::PostsController < ApplicationApiController
  # GET /api/posts
  #
  # Returns a list of posts
  def index
    respond_with Post.first(10)
  end

  # GET /api/posts/:id
  #
  # Returns a post
  def show
    respond_with Post.find_by_id(params[:id])
  end
end
