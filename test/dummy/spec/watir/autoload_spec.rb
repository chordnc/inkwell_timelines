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

  it 'new items should be autoloaded' do
    @browser.execute_script("window.scrollBy(0,document.documentElement.scrollHeight)")
    @browser.wait_until {@inkwell_timeline.div(:id => /blogline_14/).exists?}
    (5..13).each {|i| @inkwell_timeline.div(:id => /blogline_#{i}/).exists?.should == true}
  end

  it 'not default timeline should be autoloaded' do
    @inkwell_timeline.span(:class => /timeline_favoriteline/).click
    @browser.wait_until {@inkwell_timeline.div(:class => /wall_item/, :id => /favoriteline_13/).exists?}
    @browser.execute_script("window.scrollBy(0,document.documentElement.scrollHeight)")
    @browser.wait_until {@inkwell_timeline.div(:class => /wall_item/, :id => /favoriteline_3/).exists?}
    wall_items = @browser.divs(:class => /wall_item/)
    wall_items.size.should == 13
    (1..2).each do |i|
      wall_items.select { |item| item.id =~ /favoriteline_#{i}$/ }.size.should == 1
    end
  end
end