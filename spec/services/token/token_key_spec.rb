require 'rails_helper'

describe TokenKey do
  describe ".of" do
    subject { TokenKey.of(Time.now) }
    it do
      is_expected.to be_a String
      is_expected.to match /.*-.*-.*/
    end
  end
end
