require 'rails_helper'

describe TokenVerifier do
  describe "#verify" do
    subject { verifier.verify! }
    let(:verifier) { TokenVerifier.new(token: token) }

    context "invalid token" do
      let(:token) { Token.new(token: 'invalid token', timestamp: Time.now) }
      it { is_expected.to be false }
    end

    context "valid token" do
      let(:token) { TokenGenerator.new.generate }
      it { is_expected.to be true }
    end
  end
end
