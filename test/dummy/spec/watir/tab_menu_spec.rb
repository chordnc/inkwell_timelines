require 'spec_helper'
require 'watir-webdriver'

describe 'Main' do

  before(:all) do
    @browser = Watir::Browser.new
    @browser.goto "http://0.0.0.0:3000/"
    @inkwell_timeline = @browser.div(:class => /inkwell_timelines/, :id => /timelines_block/)
  end

  after(:all) do
    @browser.close
  end

  it 'favorite line should be displayed after click on Favorite tab' do
    @inkwell_timeline.span(:class => /timeline_favoriteline/).click
    @browser.wait_until {@inkwell_timeline.div(:class => /wall_item/, :id => /favoriteline_13/).exists?}
    wall_items = @browser.divs(:class => /wall_item/)
    wall_items.size.should == 10
    (4..12).each do |i|
      wall_items.select { |item| item.id =~ /favoriteline_#{i}$/ }.size.should == 1
    end
  end

  it 'tab should receive active class on click' do
    blogline = @inkwell_timeline.span(:class => /timeline_blogline/)
    blogline.click
    blogline.class_name.include?('active').should == true
    favoriteline = @inkwell_timeline.span(:class => /timeline_favoriteline/)
    favoriteline.class_name.include?('active').should == false
    favoriteline.click
    favoriteline.class_name.include?('active').should == true
    blogline.class_name.include?('active').should == false
  end
end