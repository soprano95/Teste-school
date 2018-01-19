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

ActiveRecord::Schema.define(version: 20180119213148) do

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

  create_table "cycles", force: :cascade do |t|
    t.string "cycle_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.bigint "school_id"
    t.integer "person_student_id"
    t.string "type_enroll"
    t.string "num"
    t.string "num_enroll"
    t.bigint "school_year_id"
    t.datetime "date_enroll"
    t.bigint "filiere_id"
    t.bigint "grade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["filiere_id"], name: "index_enrollments_on_filiere_id"
    t.index ["grade_id"], name: "index_enrollments_on_grade_id"
    t.index ["school_id"], name: "index_enrollments_on_school_id"
    t.index ["school_year_id"], name: "index_enrollments_on_school_year_id"
  end

  create_table "ethnics", force: :cascade do |t|
    t.string "ethnic_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.bigint "person_id"
    t.string "experience_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_experiences_on_person_id"
  end

  create_table "filieres", force: :cascade do |t|
    t.bigint "level_id"
    t.string "filiere_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["level_id"], name: "index_filieres_on_level_id"
  end

  create_table "grades", force: :cascade do |t|
    t.string "grade_name"
    t.string "grade_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.bigint "cycle_id"
    t.string "level_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cycle_id"], name: "index_levels_on_cycle_id"
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

  create_table "trainings", force: :cascade do |t|
    t.bigint "person_id"
    t.string "training_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_trainings_on_person_id"
  end

  add_foreign_key "cercles", "regions", column: "regions_id"
  add_foreign_key "communes", "cercles"
  add_foreign_key "enrollments", "filieres"
  add_foreign_key "enrollments", "grades"
  add_foreign_key "enrollments", "school_years"
  add_foreign_key "enrollments", "schools"
  add_foreign_key "experiences", "people"
  add_foreign_key "filieres", "levels"
  add_foreign_key "levels", "cycles"
  add_foreign_key "quartiers", "communes"
  add_foreign_key "schools", "quartiers"
  add_foreign_key "trainings", "people"
end
