require 'rails_helper'

describe TokenGenerator do
  describe "#generate" do
    subject { described_class.new.generate }
    it { is_expected.to be_a Token }
  end
end
