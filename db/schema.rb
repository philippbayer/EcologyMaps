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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110504085000) do

  create_table "animal_joins", :force => true do |t|
    t.integer  "country_year_id"
    t.integer  "animal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "animals", :force => true do |t|
    t.string   "name"
    t.string   "common"
    t.string   "trend"
    t.string   "category"
    t.string   "link"
    t.string   "image_license"
    t.string   "image_link"
    t.string   "author"
    t.string   "author_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "handle"
    t.string   "name"
    t.string   "area"
    t.float    "emission_target"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "country_years", :force => true do |t|
    t.integer  "country_id"
    t.string   "number"
    t.string   "emission"
    t.string   "sufficiency"
    t.string   "area_habitats_scaled"
    t.string   "area_habitats_percent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "years", :force => true do |t|
    t.string "year"
    t.text   "imagemap", :limit => 2147483647
    t.string "data"
  end

end
