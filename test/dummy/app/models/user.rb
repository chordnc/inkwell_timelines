class User < ActiveRecord::Base
   #attr_accessible :title, :body
  has_many :posts
  has_many :comments

  def blogline(options = {})
    last_shown_obj_id = options[:last_shown_obj_id]
    limit = options[:limit] || 10
    for_user = options[:for_user]
    categories = options[:categories]

    if categories
      category_ids = []
      categories.each do |category|
        category_ids = category_ids | ActiveSupport::JSON.decode(category.child_ids) | [category.id]
      end

      if last_shown_obj_id
        bloglines_categories = BloglinesCategories.where(:category_id => category_ids).where("blog_item_created_at < ?", Blogline.find(last_shown_obj_id).created_at).order("blog_item_created_at DESC").limit(limit)
      else
        bloglines_categories = BloglinesCategories.where(:category_id => category_ids).order("blog_item_created_at DESC").limit(limit)
      end

      blog_items_ids = []
      bloglines_categories.each do |record|
        blog_items_ids << record.blog_item_id
      end
      blog_items = Blogline.where(:id => blog_items_ids, :owner_id => self.id, :owner_type => 'u').order("created_at DESC")
    else
      if last_shown_obj_id
        blog_items = Blogline.where(:owner_id => self.id, :owner_type => 'u').where("created_at < ?", Blogline.find(last_shown_obj_id).created_at).order("created_at DESC").limit(limit)
      else
        blog_items = Blogline.where(:owner_id => self.id, :owner_type => 'u').order("created_at DESC").limit(limit)
      end
    end

    result = []
    blog_items.each do |item|
      if item.item_type == 'c'
        blog_obj = Comment.find item.item_id
      else
        blog_obj = Post.find item.item_id
      end

      blog_obj.item_id_in_line = item.id
      blog_obj.is_reblog_in_blogline = item.is_reblog

      if for_user
        blog_obj.is_reblogged = for_user.reblog? blog_obj
        puts blog_obj.is_reblogged
        blog_obj.is_favorited = for_user.favorite? blog_obj
      end

      result << blog_obj
    end
    result
  end

  def reblog?(obj)
    if obj.id % 2 == 1
      true
    else
      false
    end

  end

  def favorite?(obj)
    if obj.id % 2 == 1
      true
    else
      false
    end
  end
end
