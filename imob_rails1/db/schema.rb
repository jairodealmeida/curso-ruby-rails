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

ActiveRecord::Schema.define(version: 20160123113922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "state",      limit: 2
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "contratos", force: :cascade do |t|
  end

  create_table "imovels", force: :cascade do |t|
  end

  create_table "properties", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.decimal  "price"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "properties", ["user_id"], name: "index_properties_on_user_id", using: :btree

  create_table "tipo_contratos", force: :cascade do |t|
  end

  create_table "users", force: :cascade do |t|
    t.integer "city_id"
    t.string  "name"
    t.date    "birth_date"
    t.string  "phone",      limit: 20
    t.string  "username"
    t.string  "password"
  end

  add_index "users", ["city_id"], name: "index_users_on_city_id", using: :btree

  add_foreign_key "properties", "users"
end
