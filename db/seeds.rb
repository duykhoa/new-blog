# Clean all post first
Post.delete_all

FactoryGirl.create_list(:post, 10)
