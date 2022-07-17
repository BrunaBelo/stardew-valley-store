class CreateProductDescounts < ActiveRecord::Migration[6.0]
  def change
    create_table :product_descounts do |t|
      t.decimal :value
      t.boolean :active, default: false
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
