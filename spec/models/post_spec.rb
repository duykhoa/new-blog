require 'rails_helper'

RSpec.describe Post, type: :model do
  describe ".related_with" do
    let!(:posts) { create_list(:post, 4) }
    let(:post) { posts.first }

    subject { Post.related_with(post.id) }

    it { is_expected.not_to include(post.id) }
    it { expect(subject.size).to eq 3 }
  end

  describe ".by_category" do
    let(:category) { "travel and working" }
    let!(:posts) { create_list(:post, 3, category: category) }

    subject { Post.by_category(category).size }

    it { is_expected.to eq 3 }
  end

  describe "test sql injection" do
    let!(:posts) { create_list(:post, 3, category: "test category") }
    subject { Post.by_category(category).size }

    context "try OR params get all post" do
      let(:category) { "1 OR 1=1);--0" }
      it { is_expected.to eq 0 }
    end

    context "try to get all posts" do
      let(:category) { "1 UNION SELECT * FROM users " }
      it { is_expected.to eq 0 }
    end

    context "single quote param" do
      let(:category) { "') OR 1=1" }
      it { is_expected.to eq 0 }
    end
  end
end
