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

ActiveRecord::Schema.define(version: 20160712203431) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "backups", force: :cascade do |t|
    t.string   "origin"
    t.string   "destiny"
    t.string   "extension"
    t.boolean  "daily"
    t.datetime "in_daily_hour_verify"
    t.boolean  "in_daily_exclude_sunday"
    t.boolean  "in_daily_exclude_monday"
    t.boolean  "in_daily_exclude_tuesday"
    t.boolean  "in_daily_exclude_wednesday"
    t.boolean  "in_daily_exclude_thursday"
    t.boolean  "in_daily_exclude_friday"
    t.boolean  "in_daily_exclude_saturday"
    t.integer  "in_daily_time_storage"
    t.boolean  "weekly"
    t.string   "in_weekly_day_of_the_week"
    t.integer  "in_weekly_time_storage"
    t.boolean  "yearly"
    t.datetime "in_yearly_datetime"
    t.integer  "in_yearly_time_storage"
    t.boolean  "active"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "groups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "login"
    t.string   "encrypted_password"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users_groups", id: false, force: :cascade do |t|
    t.integer "users_id"
    t.integer "groups_id"
  end

end
