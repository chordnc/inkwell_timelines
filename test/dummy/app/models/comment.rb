class Comment < ActiveRecord::Base
  attr_accessor :item_id, :is_reblogged, :is_favorited
  belongs_to :user

  def reblog_count
    self.id
  end

  def favorite_count
    self.id
  end

  def comment_count
    self.id
  end
end
