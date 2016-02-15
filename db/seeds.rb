require 'ruby-progressbar'

progress_bar = ProgressBar.create(total: 50)

# Clean all post first
Post.delete_all

10.times do
  FactoryGirl.create_list(
    :post,
    5,
    title: Faker::Lorem.sentence,
    category: CATEGORY.sample
  )

  progress_bar.progress += 5
end
