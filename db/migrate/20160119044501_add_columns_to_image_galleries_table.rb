class AddColumnsToImageGalleriesTable < ActiveRecord::Migration
  def change
    rename_column :image_galleries, :name, :title
    rename_column :image_galleries, :description, :body
  end
end
