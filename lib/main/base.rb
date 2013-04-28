module InkwellTimelines
  module InkwellTimelinesHelpers
    def inkwell_timelines_tag(id)
      script = render "/partials/script"
      puts InkwellTimelines::Engine::config.wall_item_partials[:post]
      post = render 'inkwell_timelines/post'
      content_tag :div, script + post
    end
  end
end

ActionView::Base.send :include, InkwellTimelines::InkwellTimelinesHelpers