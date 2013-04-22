class CreateBloglines < ActiveRecord::Migration
  def change
    create_table :bloglines do |t|
      t.integer  "item_id"
      t.boolean "is_reblog"
      t.integer "owner_id"
      t.string "item_type"
      t.string "owner_type"
      t.text "category_ids", :default => "[]"
      t.timestamps
    end
  end
end
