class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer  "user_id"
      t.text "body"
      t.integer "parent_comment_id"
      t.integer "topmost_obj_id"
      t.text "upper_comments_tree"
      t.text "users_ids_who_favorite_it", :default => "[]"
      t.text "users_ids_who_comment_it", :default => "[]"
      t.text "users_ids_who_reblog_it", :default => "[]"
      t.string "topmost_obj_type"
      t.timestamps
    end
  end
end
