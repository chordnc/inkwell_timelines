require 'spec_helper'
require 'watir-webdriver'

describe 'Main' do

  before(:all) do
    @browser = Watir::Browser.new
    @browser.goto "http://0.0.0.0:3000/"
  end

  after(:all) do
    @browser.close
  end

  it 'tab menu items should be' do
    @browser.span(:class => /timeline_favoriteline/).exists?.should == true
    @browser.span(:class => /timeline_blogline/).exists?.should == true
    @browser.span(:class => /timeline_blogline/).class_name.include?('active').should == true
  end

  it 'selector should be' do
    selector = @browser.div(:class => /inkwell_multi_selector/)
    selector.exists?.should == true
    selector.span(:class => /name/, :text => /Category:/).exists?.should == true
  end

  it 'wall items should be' do
    wall_items = @browser.divs(:class => /wall_item/)
    wall_items.size.should == 10
    (15..24).each do |i|
      wall_items.select {|item| item.id =~ /blogline_#{i}/}.size.should == 1
    end
  end

  it 'post items should be' do
    wall_item = @browser.div(:id => /blogline_24/)
    wall_item.image(:class => /avatar/).exists?.should == true
    wall_item.span(:class => /name/, :text => /^Alexander Pushkin:$/).exists?.should == true
    wall_item.span(:class => /title/, :text => /^A wish$/).exists?.should == true
    wall_item.div(:class => /item_container/).image(:class => /^item_img$/).exists?.should == true
    wall_item.p(:text => /My days still linger, slow and rough/).exists?.should == true
    item_menu = wall_item.div(:class => /item_menu/)
    item_menu.exists?.should == true
    favorite_item = item_menu.span(:class => /favorite_action/, :text => /^1$/)
    favorite_item.exists?.should == true
    favorite_item.class_name.include?('active').should == true
    reblog_item = item_menu.span(:class => /reblog_action/, :text => /^1$/)
    reblog_item.exists?.should == true
    reblog_item.class_name.include?('active').should == true
    comment_item = item_menu.span(:class => /comment_action/, :text => /^1$/)
    comment_item.exists?.should == true
    date = item_menu.span(:class => /date/, :text => /\..*\..*:/)
    date.exists?.should == true
  end

  it 'comment should be' do
    wall_item = @browser.div(:id => /blogline_21/)
    wall_item.image(:class => /avatar/).exists?.should == true
    wall_item.span(:class => /name/, :text => /^Alexander Pushkin:$/).exists?.should == true
    wall_item.p(:text => /Alas! How come she's glimmering With temporary/).exists?.should == true
    item_menu = wall_item.div(:class => /item_menu/)
    item_menu.exists?.should == true
    favorite_item = item_menu.span(:class => /favorite_action/, :text => /^1$/)
    favorite_item.exists?.should == true
    favorite_item.class_name.include?('active').should == true
    reblog_item = item_menu.span(:class => /reblog_action/, :text => /^1$/)
    reblog_item.exists?.should == true
    reblog_item.class_name.include?('active').should == true
    comment_item = item_menu.span(:class => /comment_action/, :text => /^1$/)
    comment_item.exists?.should == true
    date = item_menu.span(:class => /date/, :text => /\..*\..*:/)
    date.exists?.should == true
  end

  it 'hidden transferred_params should be' do
    inkwell_timelines = @browser.div(:class => /inkwell_timelines/, :id => /timelines_block/)
    inkwell_timelines.hidden(:class => /(?=.*transferred_params)(?=.*blogline)/, :value => /{"user_id":1}/).exists?.should == true
    inkwell_timelines.hidden(:class => /(?=.*transferred_params)(?=.*favoriteline)/, :value => /{"user_id":1}/).exists?.should == true
  end
end