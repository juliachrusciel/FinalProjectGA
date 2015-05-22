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

ActiveRecord::Schema.define(version: 20150522192246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hisar_ustu_bebeks", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "place_name"
    t.string   "address"
    t.float    "phone_number"
    t.string   "email"
    t.string   "place_type"
    t.text     "description"
    t.string   "keyword"
    t.text     "question"
    t.text     "review"
    t.integer  "origin_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "kadikoys", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "place_name"
    t.string   "address"
    t.float    "phone_number"
    t.string   "email"
    t.string   "place_type"
    t.text     "description"
    t.string   "keyword"
    t.text     "question"
    t.text     "review"
    t.integer  "origin_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "taksims", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "place_name"
    t.string   "address"
    t.float    "phone_number"
    t.string   "email"
    t.string   "place_type"
    t.text     "description"
    t.string   "keyword"
    t.text     "question"
    t.text     "review"
    t.integer  "origin_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "vocabs", force: :cascade do |t|
    t.string   "TurkishWP"
    t.string   "EnglishWP"
    t.string   "part_of_speech"
    t.boolean  "formal"
    t.boolean  "slang"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
