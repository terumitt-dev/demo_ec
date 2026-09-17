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

ActiveRecord::Schema[8.1].define(version: 2022_08_09_130804) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "address_level1"
    t.string "address_level2"
    t.string "address_line1"
    t.string "address_line2"
    t.integer "cart_id"
    t.datetime "created_at", null: false
    t.string "email"
    t.string "family_name"
    t.string "given_name"
    t.integer "item_id"
    t.integer "order_id"
    t.string "organization"
    t.string "postal_code"
    t.string "tel"
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "item_id"
    t.integer "quantity"
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "items", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.string "image_name"
    t.string "name"
    t.integer "price"
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "item_id"
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "cart_id"
    t.datetime "created_at", null: false
    t.integer "item_id"
    t.integer "total_price"
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email"
    t.string "image_name"
    t.string "name"
    t.string "password_digest"
    t.datetime "updated_at", null: false
  end
end
