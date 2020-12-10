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

ActiveRecord::Schema.define(version: 2020_12_10_005937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: :cascade do |t|
    t.string "category"
    t.string "name"
    t.float "ABV"
    t.string "ideal_vessel"
    t.string "body"
    t.string "aroma"
    t.string "color"
    t.datetime "brewed_on"
    t.bigint "microbrewery_id"
    t.index ["microbrewery_id"], name: "index_beers_on_microbrewery_id"
  end

  create_table "microbreweries", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.date "license_renewal"
    t.boolean "outdoor_seating"
    t.boolean "social_distancing"
  end

  create_table "teahouses", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "restocked_on"
    t.datetime "opening_date"
    t.boolean "allows_dogs"
  end

  create_table "teas", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "origin"
    t.float "grams_needed"
    t.integer "steep_time"
    t.integer "brew_temp"
    t.integer "number_of_infusions"
    t.datetime "season_picked"
    t.string "ideal_teapot"
    t.boolean "caffeinated"
    t.bigint "teahouse_id"
    t.index ["teahouse_id"], name: "index_teas_on_teahouse_id"
  end

  add_foreign_key "beers", "microbreweries"
  add_foreign_key "teas", "teahouses"
end
