class AddIndexForPosts < ActiveRecord::Migration
  def change
    add_index :posts, :title
  end
end
