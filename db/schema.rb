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

ActiveRecord::Schema.define(version: 20170102215550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: :cascade do |t|
    t.string   "location"
    t.string   "body"
    t.integer  "fighter_id"
    t.integer  "challengee_id"
    t.boolean  "accepted"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.date     "fight_date"
  end

  add_index "challenges", ["challengee_id"], name: "index_challenges_on_challengee_id", using: :btree
  add_index "challenges", ["fighter_id"], name: "index_challenges_on_fighter_id", using: :btree

  create_table "fighters", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "weight"
    t.integer  "age"
    t.string   "style"
    t.string   "location"
    t.integer  "wins"
    t.integer  "losses"
    t.string   "likes1"
    t.string   "likes2"
    t.string   "likes3"
    t.string   "likes4"
    t.string   "likes5"
    t.string   "likes6"
    t.string   "likes7"
    t.string   "likes8"
    t.string   "likes9"
    t.string   "likes10"
    t.string   "hates1"
    t.string   "hates2"
    t.string   "hates3"
    t.string   "hates4"
    t.string   "hates5"
    t.string   "hates6"
    t.string   "hates7"
    t.string   "hates8"
    t.string   "hates9"
    t.string   "hates10"
    t.string   "password_digest"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "profile_pic_file_name"
    t.string   "profile_pic_content_type"
    t.integer  "profile_pic_file_size"
    t.datetime "profile_pic_updated_at"
  end

  create_table "messages", force: :cascade do |t|
    t.string   "challenger"
    t.string   "time"
    t.string   "date"
    t.string   "location"
    t.text     "body"
    t.boolean  "accepted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "challenges", "fighters"
end
