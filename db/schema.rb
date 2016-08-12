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

ActiveRecord::Schema.define(version: 20160812212140) do

  create_table "currencies", force: :cascade do |t|
    t.string   "curr_code",  null: false
    t.string   "curr_name",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fxtrans", force: :cascade do |t|
    t.integer  "status_id",                              null: false
    t.integer  "requestor_id",                           null: false
    t.integer  "acceptor_id"
    t.float    "base_amount"
    t.integer  "base_curr_id",                           null: false
    t.integer  "quote_curr_id",                          null: false
    t.integer  "fxrate"
    t.decimal  "exp_amount",    precision: 8,  scale: 2
    t.string   "place"
    t.string   "city"
    t.decimal  "lat",           precision: 10, scale: 6
    t.decimal  "lng",           precision: 10, scale: 6
    t.integer  "accry"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",     null: false
    t.string   "uid",          null: false
    t.string   "name"
    t.string   "location"
    t.string   "image_url"
    t.string   "url"
    t.string   "current_city"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "users", ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true
  add_index "users", ["provider"], name: "index_users_on_provider"
  add_index "users", ["uid"], name: "index_users_on_uid"

end
