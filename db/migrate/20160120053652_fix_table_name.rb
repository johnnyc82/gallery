class FixTableName < ActiveRecord::Migration
  def change
    rename_table :image_gallery, :image_galleries
  end
end
