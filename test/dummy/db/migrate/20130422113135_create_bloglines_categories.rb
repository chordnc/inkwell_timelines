class CreateBloglinesCategories < ActiveRecord::Migration
  def change
    create_table :bloglines_categories do |t|
      t.integer  "blog_item_id"
      t.integer "category_id"
      t.integer "item_id"
      t.string "item_type"
      t.datetime "blog_item_created_at"
      t.timestamps
    end
  end
end
