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

ActiveRecord::Schema.define(version: 20140701123604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "blip_rating"
    t.string   "broad_category"
    t.string   "narrow_category"
    t.integer  "no_std_enrolled"
    t.string   "img_addr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cvideos", force: true do |t|
    t.string   "v_link"
    t.string   "v_desc"
    t.integer  "video_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
