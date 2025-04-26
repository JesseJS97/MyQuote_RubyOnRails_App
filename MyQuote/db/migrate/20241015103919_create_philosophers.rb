class CreatePhilosophers < ActiveRecord::Migration[7.0]
  def change
    create_table :philosophers do |t|
      t.string :p_firstName, null: false
      t.string :p_surname, null: false
      t.integer :p_deathYear, null: false
      t.text :p_bio, null: false
      t.integer :p_year

      t.timestamps
    end
  end
end
