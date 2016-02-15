FactoryGirl.define do
  factory :post do
    sequence :title do |i|
      "Title #{i}"
    end

    content "This is a content sample"
    category "Category1"
  end
end
