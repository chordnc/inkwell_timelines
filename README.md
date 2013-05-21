# Inkwell Timelines

Inkwell Timelines provides simple way to create timelines with autoload content while scrolling with ability to transmit the additional parameters.
It allows you to place timeline blocks on the pages - one block per page. 

Each block can consist of several timelines (Blog and Favorite timelines on the screenshot).

Each timeline can consist of several types objects (Posts and Comments on the screenshot) with different templates to form them.

Timeline can consist of selectors ( category selector on the screenshot) to customize received data (for example, you can get timeline with only one category's items).

Timelines autoload next items when it is scrolled to the end.

![Inkwell Timelines](https://github.com/salkar/inkwell_timelines/blob/master/test/screen/main.png?raw=true)

## Installation

Put in `Gemfile`:

```ruby
gem 'inkwell_timelines', :git => 'https://github.com/salkar/inkwell_timelines.git'
```

After it do `bundle install`

Create `inkwell_timelines.rb` file in `config/initializers` and put in it your settings:

```ruby
module InkwellTimelines
  class Engine < Rails::Engine
    # Pixels count between current scroll position and page's end at which the autoload start
    config.load_distance = 150 
    config.autoload_path = 'timeline/get/' # Autoload controller path
    # Optional. If defined all partials will be searched here
    config.partials_dir = 'your path to partials' 
    config.timeline_blocks = [ 
        { # First timelines block
            :id => 'timelines_block', # Block id
            :timelines => [ 
                {
                    :id => 'blogline', # First timeline id
                    :name => 'Blog', # First timeline displayed name
                    :active => true, # Defines which timeline is active at first load
                    :data_get => ->(options = {}) { # Lambda which get data for form this timeline
                      user = User.find options[:user_id]
                      # Function that return array of objects (for example - posts and comments in dummy app)
                      user.blogline options 
                    },
                    # Array of params (of options in :data_get) saved on client side and sent to server on autoload
                    :transferred_params => [:user_id], 
                    # Add selector to customize received data (sampling by Category on the screenshot)
                    :multi_selectors => [  
                        {
                            :id => 'category', # Selector id
                            :name => 'Category', # Selector displayed name (see screenshot)
                            :data_get => ->(options = {}) { # Lambda which get objects for form selector
                              Category.where(:owner_id => options[:user_id], :owner_type => 'u')
                            }

                        }
                    ]
                },
                {
                    :id => 'favoriteline', # Second timeline id
                    :name => 'Favorite', # Second timeline displayed name
                    :data_get => ->(options = {}) { # Lambda which get data for form this timeline
                      user = User.find options[:user_id]
                      user.favoriteline options
                    },
                    # Transferred through client params (timeline owner in this case)
                    :transferred_params => [:user_id] 
                }
            ]
        }
    ]
  end
end
```

Next, add ` //= require inkwell_timelines` to your js assets (for example - to application.js) and `*= require inkwell_timelines` to your stylesheets assets (for example - to application.css).

*Notice: if you want to modify CSS or JS you can add your modified files and not add default styles/js*

Default partials are located inside the gem - [here](https://github.com/salkar/inkwell_timelines/tree/master/app/views/default_partials).
You can change this directory to your adding `config.partials_dir = 'your path to partials'` parameter in your `inkwell_timelines.rb` file.

By default, there are 5 partials in this gem (you can change all of them):

```ruby
_comment.html.erb # Partial for timeline item for comment object
_multi_selector.html.erb # Partial for selector
_multi_selector_items.html.erb # Support partial for selector
_post.html.erb # Partial for post item for comment object
_tab_menu.html.erb # Partial for timelines block menu
```

If there are other objects except posts and comments - add partials for them.

## Usage

To form the timeline block for the first showing add into your view:
```ruby
<%= inkwell_timelines_tag(block_id, options = {} %>
```
For example:
```ruby
<%= inkwell_timelines_tag('timelines_block', 
                          :user_id => User.where(:nick => 'Pushkin').first.id, 
                          :for_user => current_user) %>
```

*Notice: config for this block should be*

To on autoload feature create controller for it, add it in the `routes`, add its route to timeline config. For example:

* add `controllers/timeline_controller.rb`
```ruby
class TimelineController < ApplicationController
  def show
  end
end
```

* add route for it - 
```ruby
match "/timeline/get" => "timeline#show"
```

* add its route to timelines config:
```ruby
config.autoload_path = 'timeline/get/'
```

Next, add to created controller:
```ruby
@options = inkwell_timelines_get_params(request.body, :additional options => {})
```

`inkwell_timelines_get_params` forms options for autoload timeline part generation.
Additional options needs to merge stored on the server with transferred from client options. 
You may want to save some options on the server for security reasons (for example - `current_user` should not be sent to the client because there it can be changed).

Here you can check the options that came with the client.

At the end of autoload controller method add 
```ruby
render :layout => false
```

Example:

```ruby
class TimelineController < ApplicationController
  def show
    @options = inkwell_timelines_get_params(request.body, :for_user => current_user)

    #Here you can check came from js options. For exapmle:
    user = User.find @options[:user_id]
    raise "current user has no permissions to see #{user.nick} timeline" unless current_user.can_see_timeline user

    render :layout => false
  end
end
```

After it create view file for autoload method in controller (in our cases - `views/timeline/show.html.erb`) and add to it 
```ruby
<%= inkwell_timelines_autoload_tag(@options) %>
```

## Sample

Sample located [here](https://github.com/salkar/inkwell_timelines/tree/master/test/dummy).
To run it:
```bash
$ cd inkwell_timelines/test/dummy
$ bundle install
$ rake db:create
$ rake db:migrate
$ rake db:seed
$ rails s
```
And go to `http://0.0.0.0:3000/` in your browser after it.

## License

Inkwell is Copyright © 2013 Sergey Sokolov. It is free software, and may be redistributed under the terms specified in the MIT-LICENSE file.
