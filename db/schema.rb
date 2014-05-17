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

ActiveRecord::Schema.define(version: 20140517175259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affairs", force: true do |t|
    t.string   "kind"
    t.string   "name"
    t.date     "date"
    t.string   "location"
    t.float    "cost"
    t.text     "paypal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attachments", force: true do |t|
    t.string   "name"
    t.integer  "fileable_id"
    t.string   "fileable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "conferences", force: true do |t|
    t.string   "name"
    t.date     "date"
    t.string   "location"
    t.float    "cost"
    t.text     "paypal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.date     "date"
    t.string   "location"
    t.string   "cost"
    t.text     "paypal"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "kind_file_name"
    t.string   "kind_content_type"
    t.integer  "kind_file_size"
    t.datetime "kind_updated_at"
  end

  create_table "files", force: true do |t|
    t.string   "name"
    t.integer  "fileable_id"
    t.string   "fileable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "newsletters", force: true do |t|
    t.string   "name"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", force: true do |t|
    t.string   "name"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
