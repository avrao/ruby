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

ActiveRecord::Schema.define(version: 20140121225242) do

  create_table "dashboards", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dco_resources", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", force: true do |t|
    t.string   "region"
    t.string   "title"
    t.string   "title_link"
    t.string   "owned_by"
    t.text     "purpose"
    t.date     "added_on"
    t.string   "added_by"
    t.text     "outdated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forums", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hardwares", force: true do |t|
    t.string   "region"
    t.string   "title"
    t.string   "title_link"
    t.string   "owned_by"
    t.text     "purpose"
    t.date     "added_on"
    t.string   "added_by"
    t.text     "outdated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", force: true do |t|
    t.string   "region"
    t.string   "title"
    t.string   "title_link"
    t.string   "owned_by"
    t.text     "purpose"
    t.date     "added_on"
    t.string   "added_by"
    t.text     "outdated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsletters", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "others", force: true do |t|
    t.string   "region"
    t.string   "title"
    t.string   "title_link"
    t.string   "owned_by"
    t.text     "purpose"
    t.date     "added_on"
    t.string   "added_by"
    t.text     "outdated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portfolios", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tools", force: true do |t|
    t.string   "region"
    t.string   "title"
    t.string   "title_link"
    t.string   "owned_by"
    t.text     "purpose"
    t.date     "added_on"
    t.string   "added_by"
    t.text     "outdated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
