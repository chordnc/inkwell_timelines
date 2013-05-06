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
                    :data_get => ->(options = {}) {
                      user = User.find options[:user_id]
                      user.blogline options
                    },
                    :transferred_params => [:user_id],
                    :multi_selectors => [
                        {
                            :id => 'category',
                            :name => 'Category',
                            :id_field => 'id',
                            :name_field => 'name',
                            :parent_id_field => 'parent_category_id',
                            :data_get => ->(options = {}) {
                              Category.where(:owner_id => options[:user_id], :owner_type => 'u')
                            }

                        }
                    ]
                }
            ]
        }
    ]
  end
end