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

ActiveRecord::Schema.define(version: 20140222220157) do

  create_table "feasts", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feasts", ["restaurant_id"], name: "index_feasts_on_restaurant_id"

  create_table "feasts_users", id: false, force: true do |t|
    t.integer "feast_id"
    t.integer "user_id"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "price"
    t.string   "cuisine"
    t.string   "address"
    t.string   "location"
  end

  add_index "restaurants", ["cuisine"], name: "index_restaurants_on_cuisine"
  add_index "restaurants", ["location"], name: "index_restaurants_on_location"

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["name"], name: "index_users_on_name"

end
