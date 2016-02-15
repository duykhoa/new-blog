class Post < ActiveRecord::Base
  RELATED_POST_MAX = 5

  # Public: Get related post with post id
  #
  # Examples
  #   Post.related_with(Post.first.id)
  #   # => [...]
  #
  # Returns a list of related posts
  def self.related_with(id)
    Post.where("id != ?", id).limit(RELATED_POST_MAX)
  end
end
