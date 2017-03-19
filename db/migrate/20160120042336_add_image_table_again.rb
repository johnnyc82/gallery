class AddImageTableAgain < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.belongs_to :image_gallery, null: false
      t.string :file_id, null: false
      t.string :file_filename, null: false
      t.string :file_size, null: false
      t.string :file_content_type, null: false
    end
    add_foreign_key :images, :image_galleries
  end
end
