class AddCategoryToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :category, :string

    add_index :posts, :category
  end
end
