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

ActiveRecord::Schema.define(version: 20151216051616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lists", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "website"
    t.string   "fromAddress"
    t.string   "category"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "spam",        default: true
  end

  create_table "posts", force: :cascade do |t|
    t.string   "subject"
    t.string   "author"
    t.integer  "list_id"
    t.text     "body"
    t.string   "from_name"
    t.string   "from_email"
    t.date     "date"
    t.string   "to_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
