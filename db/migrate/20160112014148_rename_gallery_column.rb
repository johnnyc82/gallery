class RenameGalleryColumn < ActiveRecord::Migration
  def change
    rename_column :images, :gallery_id, :image_gallery_id
  end
end
