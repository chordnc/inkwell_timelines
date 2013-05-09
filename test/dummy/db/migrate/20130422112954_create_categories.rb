class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string   "name"
      t.text "parent_ids", :default => "[]"
      t.text "child_ids", :default => "[]"
      t.integer "owner_id"
      t.string "owner_type"
      t.integer "parent_category_id"
      t.boolean "checked", :default => false

      t.timestamps
    end
  end
end
