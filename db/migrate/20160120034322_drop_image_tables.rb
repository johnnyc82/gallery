class DropImageTables < ActiveRecord::Migration
  def change
    drop_table :images
    drop_table :image_galleries
    drop_table :tags
  end
end
