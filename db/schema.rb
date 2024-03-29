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

ActiveRecord::Schema.define(version: 20141202195148) do

  create_table "events", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "tree_id"
    t.integer  "longitude"
    t.integer  "latitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evergreens", force: :cascade do |t|
    t.string  "name"
    t.string  "shape"
    t.string  "bundle"
    t.string  "conesize"
    t.string  "coneshape"
    t.string  "dimensions"
    t.string  "elevation"
    t.string  "region"
    t.boolean "stalk"
    t.text    "description"
  end

  create_table "leafies", force: :cascade do |t|
    t.string "name"
    t.string "pattern"
    t.string "fruit"
    t.string "shape"
    t.string "region"
    t.string "elevation"
    t.text   "description"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
