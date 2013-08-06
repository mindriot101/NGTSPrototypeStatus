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

ActiveRecord::Schema.define(version: 20130806215557) do

  create_table "actions", force: true do |t|
    t.integer  "action_id"
    t.integer  "night_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "measurements", force: true do |t|
    t.float    "mjd"
    t.float    "sky_background"
    t.float    "humidity"
    t.float    "ambient_temp"
    t.float    "ccd_temp"
    t.float    "fwhm"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "observation_id"
    t.float    "airmass"
    t.float    "tel_ra"
    t.float    "tel_dec"
    t.float    "exposure_time"
    t.float    "moon_distance"
    t.float    "sun_distance"
  end

  create_table "nights", force: true do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "observations", force: true do |t|
    t.integer  "observation_number"
    t.integer  "night_id"
    t.text     "log"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
