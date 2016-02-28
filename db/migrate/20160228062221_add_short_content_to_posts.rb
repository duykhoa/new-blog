class AddShortContentToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :short_content, :text
  end
end
