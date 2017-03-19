class AddAttachmentImageUploadToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.attachment :image_upload
    end
  end

  def self.down
    remove_attachment :images, :image_upload
  end
end
