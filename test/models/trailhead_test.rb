require "test_helper"

describe Trailhead do
  let(:trailhead) { Trailhead.new }

  it "must be valid" do
    value(trailhead).must_be :valid?
  end
end
