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
                    :name => 'Blog',
                    :active => true,
                    :first_data_get => ->(options = {}) {
                      options[:obj].blogline options
                    }
                }
            ]
        }
    ]
  end
end