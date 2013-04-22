class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string   "title"
      t.string "preview_image"
      t.text "body"
      t.integer "user_id"
      t.text "users_ids_who_favorite_it", :default => "[]"
      t.text "users_ids_who_comment_it", :default => "[]"
      t.text "users_ids_who_reblog_it", :default => "[]"
      t.text "communities_ids", :default => "[]"

      t.timestamps
    end
  end
end
