class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :image_galleries, :gallery_id
    remove_column :images, :gallery
  end
end
