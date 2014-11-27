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

ActiveRecord::Schema.define(version: 20141124053125) do

  create_table "items", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "location"
    t.date     "expiry_date"
    t.string   "lister_email"
    t.string   "lister_tel"
    t.boolean  "sms_notify"
    t.boolean  "confirm_posting"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "media", force: true do |t|
    t.string   "file_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "item_id"
  end

  create_table "messages", force: true do |t|
    t.string   "email"
    t.string   "tel"
    t.text     "message_description"
    t.boolean  "sms_notify"
    t.boolean  "weekly_newsletter"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "item_id"
  end

end
