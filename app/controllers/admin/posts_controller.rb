class Admin::PostsController < ApplicationAdminController
  before_action :authenticate_user!

  def index
    @posts = to_json(Post.all)
  end

  def new
    @category = CATEGORY
  end

  private

  def to_json(posts)
    JSON.generate(posts.map { |post| jsonizable(post) })
  end

  def jsonizable(post)
    {
      title: post.title,
      short_content: post.short_content,
      category: post.category,
      editUrl: '/admin/posts/' + post.id.to_s + '/edit',
      deleteUrl: '/admin/posts/' + post.id.to_s + '/delete',
      viewUrl: '/posts/' + post.id.to_s
    }
  end
end
