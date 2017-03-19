class CreateImageGalleries < ActiveRecord::Migration
  def change
    create_table :image_galleries do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end




end
