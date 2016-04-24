require 'spec_helper'

describe BlogAuthenticate do
  describe "authenticate" do
    let(:authenticator) { BlogAuthenticate.new(user: "user", password: "password") }
    subject { authenticator.authenticate }

    it { is_expected.not_to be nil }
    it { is_expected.to be_a Token }
  end
end
