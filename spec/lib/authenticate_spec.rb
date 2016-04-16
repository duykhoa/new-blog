require 'spec_helper'

describe Authenticate do
  describe "authenticate" do
    let(:x) do
      Class.new do
        include Authenticate

        attr_reader :user_name, :password

        def initialize(user_name, password)
          @user_name = user_name
          @password = password
        end
      end
    end

    before { Object.const_set("X", x) }
    subject { X.new('user', 'password').authenticate! }
    it { is_expected.to be true }
  end
end
