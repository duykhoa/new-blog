class Api::RelatedPostsController < ApplicationApiController
  # GET /api/related_posts/:id
  #
  # Returns related posts with a post with the specific id
  def show
    respond_with Post.related_with(params[:id])
  end
end
