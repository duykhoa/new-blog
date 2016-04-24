class Api::PostsController < ApplicationApiController
  before_action :verify_token, only: [:create ]
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

  def create
    @post = Post.new(post_params).save
    render json: { success: true }
  end

  private

  def post_params
    params.permit(:title, :short_content, :image, :category, :content)
  end
end
