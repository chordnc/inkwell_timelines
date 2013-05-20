# Inkwell Timelines

Inkwell Timelines provides simple way to create timelines with autoload content while scrolling with ability to transmit the additional parameters.
It allows you to place timeline blocks on the pages - one block per page. 

Each block can consist of several timelines (Blog and Favorite timelines on the screenshot).

Each timeline can consist of several types objects (Posts and Comments on the screenshot) with different templates to form them.

Timeline can consist of selectors ( category selector on the screenshot) to customize received data (for example, you can get timeline with only one category's items).

Timelines autoloads next items when it is scrolled to the end.

![Inkwell Timelines](https://github.com/salkar/inkwell_timelines/blob/master/test/screen/main.png?raw=true)

## Installation

Put in `Gemfile`:

```ruby
gem 'inkwell_timelines', :git => 'https://github.com/salkar/inkwell_timelines.git'
```

After it do `bundle install`

