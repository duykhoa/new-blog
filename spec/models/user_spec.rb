require 'rails_helper'

describe User do
  describe "authenticate!" do
    let(:user) { described_class.new(user_name: "username", password: "test") }
    it { expect(user).to be_a User }
  end
end
