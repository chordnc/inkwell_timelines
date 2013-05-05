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

      content_tag :div, tab_menu + (transferred_params_fields unless transferred_params.empty?) + wall_items, :class => 'inkwell_timelines', :id => block_id
    end

    def inkwell_timeline_autoload_data(request_body, options = {})
         request_params = ActiveSupport::JSON.decode(request_body).symbolize_keys!
         options.merge! request_params
         options.merge! ActiveSupport::JSON.decode(options[:transferred_params]).symbolize_keys!
         puts y options

         block_configs = InkwellTimelines::Engine::config.timeline_blocks
         block_index = block_configs.index{|block| block[:id] == options[:block_name]}
         raise "block #{options[:block_name]} is not found" unless block_index
         current_block = block_configs[block_index]

         block_timelines = current_block[:timelines]
         active_timeline = nil
         block_timelines.each {|timeline| active_timeline = timeline if timeline[:id] == options[:timeline]}

         data = active_timeline[:data_get].call options
         wall_items = ActionView::OutputBuffer.new
         data.each do |record|
           wall_item = render :partial => "inkwell_timelines/#{record.class.to_s.downcase}", :locals => {:record => record, :timeline => active_timeline[:id]}
           wall_items += wall_item
         end
         wall_items
       end
  end
end

ActionView::Base.send :include, InkwellTimelines::Helpers