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

ActiveRecord::Schema.define(version: 20180119094950) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cercles", force: :cascade do |t|
    t.bigint "regions_id"
    t.string "cercle_name"
    t.string "cercle_name_short"
    t.integer "position"
    t.string "code"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["regions_id"], name: "index_cercles_on_regions_id"
  end

  create_table "communes", force: :cascade do |t|
    t.bigint "cercle_id"
    t.string "commune_name"
    t.string "commune_name_short"
    t.integer "position"
    t.string "code"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cercle_id"], name: "index_communes_on_cercle_id"
  end

  create_table "ethnics", force: :cascade do |t|
    t.string "ethnic_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quartiers", force: :cascade do |t|
    t.bigint "commune_id"
    t.string "quartier_name"
    t.string "quartier_name_short"
    t.integer "position"
    t.string "code"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commune_id"], name: "index_quartiers_on_commune_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "region_name"
    t.string "region_name_short"
    t.integer "position"
    t.string "code"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "religions", force: :cascade do |t|
    t.string "religion_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cercles", "regions", column: "regions_id"
  add_foreign_key "communes", "cercles"
  add_foreign_key "quartiers", "communes"
end
