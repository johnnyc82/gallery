class AddImageUploadToImagesModel < ActiveRecord::Migration
  def change
    add_column :Images, :image_upload, :string
  end
end
