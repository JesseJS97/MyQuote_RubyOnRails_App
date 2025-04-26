class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :fname, null: false
      t.string :surname, null: false
      t.string :email, null: false
      t.boolean :IsAdmin, default: false
      t.string :password_digest, null: false
      t.string :status, null: false

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
