class Comment < ActiveRecord::Base
  attr_accessor :item_id_in_line, :is_reblog_in_blogline
end
