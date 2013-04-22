class CreateFavoritelines < ActiveRecord::Migration
  def change
    create_table :favoritelines do |t|
      t.integer  "item_id"
      t.integer "owner_id"
      t.string "item_type"
      t.string "owner_type"
      t.timestamps
    end
  end
end
