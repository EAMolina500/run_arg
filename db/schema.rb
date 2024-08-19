# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_08_19_060440) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.bigint "organization_id", null: false
    t.string "name"
    t.date "date"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_events_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_organizations_on_user_id"
  end

  create_table "race_results", force: :cascade do |t|
    t.bigint "runner_id", null: false
    t.bigint "race_id", null: false
    t.float "time"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["race_id"], name: "index_race_results_on_race_id"
    t.index ["runner_id"], name: "index_race_results_on_runner_id"
  end

  create_table "races", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.string "name"
    t.float "distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_races_on_event_id"
  end

  create_table "runners", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_runners_on_organization_id"
    t.index ["user_id"], name: "index_runners_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "organizations"
  add_foreign_key "organizations", "users"
  add_foreign_key "race_results", "races"
  add_foreign_key "race_results", "runners"
  add_foreign_key "races", "events"
  add_foreign_key "runners", "organizations"
  add_foreign_key "runners", "users"
end
