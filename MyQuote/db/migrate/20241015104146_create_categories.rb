class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :cat_name, null: false

      t.timestamps
    end
  end
end
