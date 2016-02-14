class Api::PostsController < ApplicationApiController
  def index
    respond_with Post.all
  end

  def show
    respond_with Post.find_by_id(params[:id])
  end
end
