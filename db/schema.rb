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

ActiveRecord::Schema.define(version: 2019_06_04_132524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.bigint "user_plant_id"
    t.integer "health"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_plant_id"], name: "index_activities_on_user_plant_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "variety"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.string "origin"
    t.text "maintenance"
    t.string "category"
    t.integer "days", default: 0, null: false
  end

  create_table "user_plants", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "plant_id"
    t.string "name"
    t.string "picture"
    t.integer "origin_health"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_user_plants_on_plant_id"
    t.index ["user_id"], name: "index_user_plants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.string "address"
    t.string "number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "waters", force: :cascade do |t|
    t.bigint "user_plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_plant_id"], name: "index_waters_on_user_plant_id"
  end

  add_foreign_key "activities", "user_plants"
  add_foreign_key "user_plants", "plants"
  add_foreign_key "user_plants", "users"
  add_foreign_key "waters", "user_plants"
end
