class Post < ActiveRecord::Base
  RELATED_POST_MAX = 5

  # Public: Get related post with post id
  #
  #   id - The integer represents post id
  #
  # Examples
  #   Post.related_with(Post.first.id)
  #   # => [...]
  #
  # Returns a list of posts
  def self.related_with(id)
    Post.where("id != ?", id).limit(RELATED_POST_MAX)
  end

  # Public: Return a list of posts that have category in the arg
  #
  #   category - String category
  #
  # Examples
  #   Post.by_category("Travel and working")
  #   # => [...]
  #
  # Returns a list of posts
  def self.by_category(category)
    Post.where("category = ?", category)
  end
end
