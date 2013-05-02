module InkwellTimelines
  class Engine < Rails::Engine
    config.load_distance = 150
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