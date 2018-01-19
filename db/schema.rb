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

ActiveRecord::Schema.define(version: 20180119211711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

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

  create_table "grades", force: :cascade do |t|
    t.string "grade_name"
    t.string "grade_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.string "sexe"
    t.datetime "date_nai"
    t.string "lieu_nai"
    t.string "situation_family"
    t.string "regime_matrimonial"
    t.hstore "contact"
    t.string "email"
    t.string "address"
    t.hstore "personId"
    t.boolean "life"
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

  create_table "school_years", force: :cascade do |t|
    t.string "annee_scolaire"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.bigint "quartier_id"
    t.string "school_name"
    t.hstore "contacts"
    t.string "address"
    t.string "academie"
    t.boolean "reinscription"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quartier_id"], name: "index_schools_on_quartier_id"
  end

  add_foreign_key "cercles", "regions", column: "regions_id"
  add_foreign_key "communes", "cercles"
  add_foreign_key "quartiers", "communes"
  add_foreign_key "schools", "quartiers"
end
