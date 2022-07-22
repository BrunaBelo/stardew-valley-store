class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.decimal :total_value
      t.decimal :descount
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
