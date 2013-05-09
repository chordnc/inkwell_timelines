# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130422113135) do

  create_table "bloglines", :force => true do |t|
    t.integer  "item_id"
    t.boolean  "is_reblog"
    t.integer  "owner_id"
    t.string   "item_type"
    t.string   "owner_type"
    t.text     "category_ids", :default => "[]"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "bloglines_categories", :force => true do |t|
    t.integer  "blog_item_id"
    t.integer  "category_id"
    t.integer  "item_id"
    t.string   "item_type"
    t.datetime "blog_item_created_at"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "parent_ids",         :default => "[]"
    t.text     "child_ids",          :default => "[]"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.integer  "parent_category_id"
    t.boolean  "checked",            :default => false
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.text     "body"
    t.integer  "parent_comment_id"
    t.integer  "topmost_obj_id"
    t.text     "upper_comments_tree"
    t.text     "users_ids_who_favorite_it", :default => "[]"
    t.text     "users_ids_who_comment_it",  :default => "[]"
    t.text     "users_ids_who_reblog_it",   :default => "[]"
    t.string   "topmost_obj_type"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "favoritelines", :force => true do |t|
    t.integer  "item_id"
    t.integer  "owner_id"
    t.string   "item_type"
    t.string   "owner_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.string   "preview_image"
    t.text     "body"
    t.integer  "user_id"
    t.text     "users_ids_who_favorite_it", :default => "[]"
    t.text     "users_ids_who_comment_it",  :default => "[]"
    t.text     "users_ids_who_reblog_it",   :default => "[]"
    t.text     "communities_ids",           :default => "[]"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "nick"
    t.string   "name"
    t.string   "avatar"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
