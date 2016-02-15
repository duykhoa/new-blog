FactoryGirl.define do
  factory :post do
    title { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraph(2) }
    category { CATEGORY.sample }
  end
end
