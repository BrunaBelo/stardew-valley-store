class CreateProductPhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :product_photos do |t|
      t.string :url
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
