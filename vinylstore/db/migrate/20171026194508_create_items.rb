class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :artist
      t.string :title
      t.decimal :price
      t.string :image_url
      t.string :genre
      t.string :label
      t.integer :year

      t.timestamps
    end
  end
end
