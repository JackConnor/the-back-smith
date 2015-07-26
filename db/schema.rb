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

ActiveRecord::Schema.define(version: 20150726014252) do

  create_table "comments", force: :cascade do |t|
    t.string   "body"
    t.integer  "skater_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "post_id"
  end

  create_table "crews", force: :cascade do |t|
    t.string   "name"
    t.integer  "skater_id_id"
    t.string   "city"
    t.string   "photo"
    t.string   "intro_video"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "crews_skaters", id: false, force: :cascade do |t|
    t.integer "skater_id", null: false
    t.integer "crew_id",   null: false
  end

  add_index "crews_skaters", ["crew_id", "skater_id"], name: "index_crews_skaters_on_crew_id_and_skater_id"
  add_index "crews_skaters", ["skater_id", "crew_id"], name: "index_crews_skaters_on_skater_id_and_crew_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "trick"
    t.integer  "skater_id"
    t.string   "city"
    t.string   "spot_name"
    t.string   "video"
    t.string   "cover_photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "skaters", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "photo"
    t.string   "intro_video"
    t.boolean  "filmer"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
