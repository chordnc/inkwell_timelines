require 'spec_helper'
require 'watir-webdriver'

describe 'Main' do

  before(:each) do
    @browser = Watir::Browser.new
    @browser.goto "http://0.0.0.0:3000/"
  end

  after(:each) do
    @browser.close
  end

  it 'tab menu items should be' do
    @browser.span(:class => /^timeline_favoriteline$/).exists?.should == true
    @browser.span(:class => /^timeline_blogline$/).exists?.should == true
    @browser.span(:class => /^timeline_blogline$/).class_name.include?('active').should == true
  end

  it 'selector should be' do
    selector = @browser.div(:class => /^inkwell_multi_selector$/)
    selector.exists?.should == true
    selector.span(:class => /^name$/, :text => /^Category:$/).exists?.should == true
  end
end