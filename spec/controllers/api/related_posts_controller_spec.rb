require "rails_helper"

describe Api::RelatedPostsController do
  describe "GET show" do
    let!(:post) { create(:post) }

    before do
      get :show, id: post.id, format: :json
    end

    it do
      expect(response.status).to eq 200
    end
  end
end
