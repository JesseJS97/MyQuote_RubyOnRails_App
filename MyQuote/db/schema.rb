# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_10_15_104246) do
  create_table "categories", force: :cascade do |t|
    t.string "cat_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "philosophers", force: :cascade do |t|
    t.string "p_firstName", null: false
    t.string "p_surname", null: false
    t.integer "p_deathYear", null: false
    t.text "p_bio", null: false
    t.integer "p_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotecategories", force: :cascade do |t|
    t.integer "cat_quantity", null: false
    t.integer "quote_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_quotecategories_on_category_id"
    t.index ["quote_id"], name: "index_quotecategories_on_quote_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.text "quote_txt", null: false
    t.text "user_comm", null: false
    t.integer "user_id", null: false
    t.integer "philosopher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["philosopher_id"], name: "index_quotes_on_philosopher_id"
    t.index ["user_id"], name: "index_quotes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "fname", null: false
    t.string "surname", null: false
    t.string "email", null: false
    t.boolean "IsAdmin", default: false
    t.string "password_digest", null: false
    t.string "status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "quotecategories", "categories"
  add_foreign_key "quotecategories", "quotes"
  add_foreign_key "quotes", "philosophers"
  add_foreign_key "quotes", "users"
end
