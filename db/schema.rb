# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_17_062530) do

  create_table "looks", force: :cascade do |t|
    t.string "title"
    t.text "note"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_looks", force: :cascade do |t|
    t.integer "product_id"
    t.integer "look_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["look_id"], name: "index_product_looks_on_look_id"
    t.index ["product_id"], name: "index_product_looks_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "category"
    t.string "product_name"
    t.integer "price"
    t.string "store"
    t.string "Url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
