require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "#related_with" do
    let!(:posts) { create_list(:post, 4) }
    let(:post) { posts.first }

    subject { Post.related_with(post.id) }

    it { is_expected.not_to include(post.id) }
    it { expect(subject.size).to eq 3 }
  end
end
