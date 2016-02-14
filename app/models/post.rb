class Post < ActiveRecord::Base
  RELATED_POST_MAX = 5

  def self.related_with(id)
    Post.where("id != ?", id).limit(RELATED_POST_MAX)
  end
end
