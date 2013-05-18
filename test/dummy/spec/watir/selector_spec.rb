require 'spec_helper'
require 'watir-webdriver'

describe 'Main' do

  before(:all) do
    @browser = Watir::Browser.new
    @browser.goto "http://0.0.0.0:3000/"
    @inkwell_timeline = @browser.div(:class => /inkwell_timelines/, :id => /timelines_block/)
    @selector = @inkwell_timeline.div(:class => /inkwell_multi_selector/)
  end

  before(:each) do
    @browser.refresh
  end

  after(:all) do
    @browser.close
  end

  it 'dropdown should be displayed and hided on user actions' do
    @selector.div(:class => /action/).click
    @browser.wait_until {@selector.div(:class => /dropdown/).visible? }
    @selector.div(:class => /action/).click
    @browser.wait_until {!@selector.div(:class => /dropdown/).visible?}

    @selector.div(:class => /action/).click
    @browser.wait_until {@selector.div(:class => /dropdown/).visible?}
    @inkwell_timeline.click
    @browser.wait_until {!@selector.div(:class => /dropdown/).visible?}
  end

  it 'all checkboxes should be checked and synchronized with state on first load' do
    checkboxes = @selector.spans(:class => /(?=.*checkbox_with_label)(?=.*checked)/)
    checkboxes.size.should == 9
    states = @selector.spans(:id => /inkwell_category_state_/)
    states.size.should == 4
    [1,2,7,8].each do |i|
      checkboxes.select { |item| item.id =~ /inkwell_category_checkbox_#{i}$/ }.size.should == 1
      states.select { |item| item.id =~ /inkwell_category_state_#{i}$/ }.size.should == 1
    end
  end

  it 'checkbox should be checked/unchecked on click' do
    @selector.div(:class => /action/).click
    @browser.wait_until {@selector.div(:class => /dropdown/).visible? }
    checkbox = @selector.span(:id => /inkwell_category_checkbox_1/)
    checkbox.class_name.include?('checked').should == true
    @selector.span(:id => /inkwell_category_state_1/).exists?.should == true
    checkbox.click
    checkbox.class_name.include?('checked').should == false
    @selector.span(:id => /inkwell_category_state_1/).exists?.should == false
    checkbox.click
    checkbox.class_name.include?('checked').should == true
    @selector.span(:id => /inkwell_category_state_1/).exists?.should == true
  end

  it 'upper checkboxes should be unchecked after uncheck their child (2-level)' do
    @selector.div(:class => /action/).click
    @browser.wait_until {@selector.div(:class => /dropdown/).visible? }
    @selector.spans(:class => /(?=.*nesting)(?=.*collapsed)/).each {|span| span.click if span.visible?}
    @selector.span(:id => /inkwell_category_checkbox_3/).click
    @selector.span(:id => /inkwell_category_checkbox_2/).class_name.include?('checked').should == false
    @selector.span(:id => /inkwell_category_state_2/).exists?.should == false
    @selector.span(:id => /inkwell_category_state_3/).exists?.should == false
    @selector.span(:id => /inkwell_category_state_4/).exists?.should == true
    @selector.span(:id => /inkwell_category_state_5/).exists?.should == true
    @selector.span(:id => /inkwell_category_state_6/).exists?.should == true
  end

  it 'upper checkboxes should be unchecked after uncheck their child (3-level)' do
    @selector.div(:class => /action/).click
    @browser.wait_until { @selector.div(:class => /dropdown/).visible? }
    @selector.spans(:class => /(?=.*nesting)(?=.*collapsed)/).each { |span| span.click if span.visible? }
    @selector.spans(:class => /(?=.*nesting)(?=.*collapsed)/).each { |span| span.click if span.visible? }
    @selector.span(:id => /inkwell_category_checkbox_4/).click
    @selector.span(:id => /inkwell_category_checkbox_2/).class_name.include?('checked').should == false
    @selector.span(:id => /inkwell_category_checkbox_3/).class_name.include?('checked').should == false
    @selector.span(:id => /inkwell_category_state_2/).exists?.should == false
    @selector.span(:id => /inkwell_category_state_3/).exists?.should == false
    @selector.span(:id => /inkwell_category_state_4/).exists?.should == false
    @selector.span(:id => /inkwell_category_state_5/).exists?.should == true
    @selector.span(:id => /inkwell_category_state_6/).exists?.should == true
  end

  it 'child checkboxes should be checked after check their parent' do
    @selector.div(:class => /action/).click
    @browser.wait_until { @selector.div(:class => /dropdown/).visible? }
    @selector.spans(:class => /(?=.*nesting)(?=.*collapsed)/).each { |span| span.click if span.visible? }
    @selector.spans(:class => /(?=.*nesting)(?=.*collapsed)/).each { |span| span.click if span.visible? }
    @selector.span(:id => /inkwell_category_checkbox_4/).click
    @selector.span(:id => /inkwell_category_checkbox_5/).click
    @selector.span(:id => /inkwell_category_checkbox_2/).click
    @selector.span(:id => /inkwell_category_checkbox_2/).class_name.include?('checked').should == true
    @selector.span(:id => /inkwell_category_checkbox_3/).class_name.include?('checked').should == true
    @selector.span(:id => /inkwell_category_checkbox_4/).class_name.include?('checked').should == true
    @selector.span(:id => /inkwell_category_checkbox_5/).class_name.include?('checked').should == true
    @selector.span(:id => /inkwell_category_state_2/).exists?.should == true
    @selector.span(:id => /inkwell_category_state_5/).exists?.should == false
    @selector.span(:id => /inkwell_category_state_3/).exists?.should == false
    @selector.span(:id => /inkwell_category_state_4/).exists?.should == false
  end
end