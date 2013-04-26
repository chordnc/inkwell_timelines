require 'spec_helper'
include InkwellTimelines::InkwellTimelinesHelpers

describe "Main" do
  it "test" do
      inkwell_timelines_tag("this").should == "this that"
  end
end