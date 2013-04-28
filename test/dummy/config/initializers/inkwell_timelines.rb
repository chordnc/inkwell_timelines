module InkwellTimelines
  class Engine < Rails::Engine
    config.wall_item_partials = {
        :post => 'inkwell_timelines/post',
        :comment => 'inkwell_timelines/comment'
    }
    config.timeline_blocks = [
        {
            :id => 'timelines_block',
            :timelines => [
                {
                    :id => 'blogline',
                    :data_get => ->(options = {}) {
                      #blogline_items = Blogline.
                    }
                }
            ]
        }
    ]
  end
end