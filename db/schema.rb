# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150528182624) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name",           limit: 255,   null: false
    t.string   "tel_no",         limit: 255,   null: false
    t.string   "street_address", limit: 255
    t.string   "area",           limit: 255
    t.text     "comments",       limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "company_id",      limit: 4
    t.string   "name",            limit: 255
    t.string   "tel_no",          limit: 255, null: false
    t.string   "email",           limit: 255, null: false
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "customers_orders", id: false, force: :cascade do |t|
    t.integer "customer_id", limit: 4, null: false
    t.integer "order_id",    limit: 4, null: false
  end

  add_index "customers_orders", ["customer_id", "order_id"], name: "index_customers_orders_on_customer_id_and_order_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.integer  "category_id", limit: 4
    t.string   "name",        limit: 255,                            null: false
    t.text     "description", limit: 65535,                          null: false
    t.decimal  "price",                     precision: 10, scale: 2, null: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id", using: :btree

  create_table "items_meals", id: false, force: :cascade do |t|
    t.integer "item_id", limit: 4, null: false
    t.integer "meal_id", limit: 4, null: false
  end

  add_index "items_meals", ["item_id", "meal_id"], name: "index_items_meals_on_item_id_and_meal_id", using: :btree

  create_table "items_menus", id: false, force: :cascade do |t|
    t.integer "item_id", limit: 4, null: false
    t.integer "menu_id", limit: 4, null: false
  end

  add_index "items_menus", ["item_id", "menu_id"], name: "index_items_menus_on_item_id_and_menu_id", using: :btree

  create_table "meals", force: :cascade do |t|
    t.integer  "order_id",   limit: 4
    t.string   "ordered_by", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "meals", ["order_id"], name: "index_meals_on_order_id", using: :btree

  create_table "menus", force: :cascade do |t|
    t.date     "menu_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.date     "delivery_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
