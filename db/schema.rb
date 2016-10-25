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

ActiveRecord::Schema.define(version: 20161025115806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "pincode"
    t.integer  "phone"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logins", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "OrderDate"
    t.datetime "ShipDate"
    t.datetime "RequiredDate"
    t.boolean  "TransactSatus"
    t.string   "paid"
    t.datetime "PayDate"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string   "PaymentType"
    t.string   "booleans"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "ProductName"
    t.string   "description"
    t.integer  "price"
    t.string   "size"
    t.string   "color"
    t.integer  "discount"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sellers", force: :cascade do |t|
    t.string   "CompanyName"
    t.string   "SellerName"
    t.string   "address"
    t.string   "Phone"
    t.string   "email"
    t.string   "PaymentMethod"
    t.string   "DiscountType"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "shippers", force: :cascade do |t|
    t.string   "CompanyName"
    t.integer  "phone"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "addresses", "users"
end
