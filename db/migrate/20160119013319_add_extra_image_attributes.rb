class AddExtraImageAttributes < ActiveRecord::Migration
  def change
    add_column :Images, :image_id, :string
    add_column :Images, :image_filename, :string
    add_column :Images, :image_size, :string
    add_column :Images, :image_content_type, :string
  end
end
