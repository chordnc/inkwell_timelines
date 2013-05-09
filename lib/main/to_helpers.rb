module InkwellTimelines
  module Helpers
    def inkwell_timelines_tag(block_id, options = {})
      block_configs = InkwellTimelines::Engine::config.timeline_blocks
      block_index = block_configs.index{|block| block[:id] == block_id}
      current_block = block_configs[block_index]

      tab_menu_params = []
      transferred_params = []
      active_timeline = nil
      timeline_configs = current_block[:timelines]
      timeline_configs.each do |config|
        tab_menu_params << {
            :name => config[:name],
            :class => config[:id],
            :active => config[:active]
        }
        active_timeline = config if config[:active]

        if config[:transferred_params] and !config[:transferred_params].empty?
          passed_options = {:name => config[:id], :value => {}}
          config[:transferred_params].each {|param| passed_options[:value][param] = options[param]}
          transferred_params << passed_options
        end
      end

      tab_menu = render :partial => 'inkwell_timelines/tab_menu', :locals => {:options => tab_menu_params}

      multi_selectors = ActionView::OutputBuffer.new
      if active_timeline[:multi_selectors] and !active_timeline[:multi_selectors].empty?
        active_timeline[:multi_selectors].each do |selector|
          records = selector[:data_get].call(options)
          multi_selectors += render :partial => 'inkwell_timelines/multi_selector', :locals => {:records => records, :options => selector}
        end
      end

      data = active_timeline[:data_get].call(options)
      wall_items = ActionView::OutputBuffer.new
      data.each do |record|
        wall_item = render :partial => "inkwell_timelines/#{record.class.to_s.downcase}", :locals => {:record => record, :timeline => active_timeline[:id]}
        wall_items += wall_item
      end

      transferred_params_fields = ActionView::OutputBuffer.new
      unless transferred_params.empty?
        transferred_params.each do |params|
          transferred_params_fields += tag :input, :type => :hidden, :class => "transferred_params #{params[:name]}", :value => ActiveSupport::JSON.encode(params[:value])
        end
      end

      content_tag :div, tab_menu + multi_selectors + (transferred_params_fields unless transferred_params.empty?) + wall_items, :class => 'inkwell_timelines', :id => block_id
    end

    def inkwell_timelines_autoload_tag(options = {})
      block_configs = InkwellTimelines::Engine::config.timeline_blocks
      block_index = block_configs.index { |block| block[:id] == options[:block_name] }
      raise "block #{options[:block_name]} is not found" unless block_index
      current_block = block_configs[block_index]

      block_timelines = current_block[:timelines]
      active_timeline = nil
      block_timelines.each { |timeline| active_timeline = timeline if timeline[:id] == options[:timeline] }

      data = active_timeline[:data_get].call options
      wall_items = ActionView::OutputBuffer.new
      data.each do |record|
        wall_item = render :partial => "inkwell_timelines/#{record.class.to_s.downcase}", :locals => {:record => record, :timeline => active_timeline[:id]}
        wall_items += wall_item
      end
      wall_items
    end

    def inkwell_selector_current_state(records, options = {})
      result_ids, checked_ids = [], []
      records.select {|rec| rec.checked} .each do |record|
        record_child_ids = record.send(options[:child_record_ids])
        check_result = record_child_ids & result_ids
        if check_result.empty?
          next if checked_ids.include? record.id
          result_ids << record.id
        else
          result_ids.delete check_result
          result_ids << record.id
        end
        checked_ids += (record_child_ids - checked_ids)
      end
      result = ActionView::OutputBuffer.new
      result_ids.each do |id|
        state_item = render :partial => "inkwell_timelines/selector_state_item", :locals => {:record => records[records.index{|r| r.id == id}]}
        result += state_item
      end
      result
    end

  end
end

ActionView::Base.send :include, InkwellTimelines::Helpers