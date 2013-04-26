module InkwellTimelines
  module InkwellTimelinesHelpers
    def inkwell_timelines_tag(id)
      r = render "/partials/script"
      content_tag :div, r
    end
  end
end

ActionView::Base.send :include, InkwellTimelines::InkwellTimelinesHelpers