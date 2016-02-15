class Api::CategoryPostsController < ApplicationApiController
  # GET /api/category_posts/:id
  #
  # Returns posts with category id
  def show
    respond_with Post.by_category(params[:id])
  end
end
