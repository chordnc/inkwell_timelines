module InkwellTimelines
  module InkwellTimelinesHelpers
    def inkwell_timelines_tag(block_id, options = {})
      block_configs = InkwellTimelines::Engine::config.timeline_blocks
      block_index = block_configs.index{|block| block[:id] == block_id}
      current_block = block_configs[block_index]

      tab_menu_params = []
      active_timeline = nil
      timeline_configs = current_block[:timelines]
      timeline_configs.each do |config|
        tab_menu_params << {
            :name => config[:name],
            :class => config[:id],
            :active => config[:active]
        }
        active_timeline = config if config[:active]
      end

      tab_menu = render :partial => 'inkwell_timelines/tab_menu', :locals => {:options => tab_menu_params}
      data = active_timeline[:first_data_get].call(options)
      wall_items = ActionView::OutputBuffer.new
      data.each do |record|
        wall_item = render :partial => "inkwell_timelines/#{record.class.to_s.downcase}", :locals => {:record => record}
        wall_items += wall_item
      end
      content_tag :div, tab_menu + wall_items, :class => 'inkwell_timelines', :id => block_id
    end
  end
end

ActionView::Base.send :include, InkwellTimelines::InkwellTimelinesHelpers