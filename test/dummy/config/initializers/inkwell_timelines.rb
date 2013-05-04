module InkwellTimelines
  class Engine < Rails::Engine
    config.load_distance = 150
    config.autoload_path = 'timeline/get/'
    config.timeline_blocks = [
        {
            :id => 'timelines_block',
            :timelines => [
                {
                    :id => 'blogline',
                    :name => 'Blog',
                    :active => true,
                    :first_data_get => ->(options = {}) {
                      user = User.find options[:obj_id]
                      user.blogline options
                    },
                    :transferred_params => [:obj_id]
                }
            ]
        }
    ]
  end
end