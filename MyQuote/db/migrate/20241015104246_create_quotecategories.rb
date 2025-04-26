class CreateQuotecategories < ActiveRecord::Migration[7.0]
  def change
    create_table :quotecategories do |t|
      t.integer :cat_quantity, null: false
      t.references :quote, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
