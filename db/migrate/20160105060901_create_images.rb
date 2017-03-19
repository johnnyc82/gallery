class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :author
      t.boolean :favourite

      t.timestamps null: false
    end
  end

  def up
    remove_column :images, :gallery
  end

end
