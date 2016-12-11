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

ActiveRecord::Schema.define(version: 20161211191337) do

  create_table "beers", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "description", null: false
    t.string   "picture",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "beers", ["title"], name: "index_beers_on_title", unique: true

  create_table "reviews", force: :cascade do |t|
    t.integer  "beer_id",    null: false
    t.integer  "rating",     null: false
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["beer_id"], name: "index_reviews_on_beer_id"

end
