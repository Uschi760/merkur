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


ActiveRecord::Schema.define(version: 2021_02_22_163042) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"


  create_table "travellers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "origin_planet"
    t.index ["email"], name: "index_travellers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_travellers_on_reset_password_token", unique: true

  create_table "bodies", force: :cascade do |t|
    t.string "name"
    t.string "nearest_planet"
    t.float "distance"
    t.integer "capacity"
    t.string "climate"
    t.date "discovery_date"
    t.string "discovered_by"
    t.boolean "is_planet"
    t.integer "gravity"
    t.integer "cost_per_day"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false

  end

end
