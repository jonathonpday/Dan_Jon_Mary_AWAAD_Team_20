# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_23_155235) do

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "years", force: :cascade do |t|
    t.integer "country_id", null: false
    t.decimal "YR2000"
    t.decimal "YR2001"
    t.decimal "YR2002"
    t.decimal "YR2003"
    t.decimal "YR2004"
    t.decimal "YR2005"
    t.decimal "YR2006"
    t.decimal "YR2007"
    t.decimal "YR2008"
    t.decimal "YR2009"
    t.decimal "YR2010"
    t.decimal "YR2011"
    t.decimal "YR2012"
    t.decimal "YR2013"
    t.decimal "YR2014"
    t.decimal "YR2015"
    t.decimal "YR2016"
    t.decimal "YR2017"
    t.decimal "YR2018"
    t.decimal "YR2019"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_years_on_country_id"
  end

  add_foreign_key "years", "countries"
end
