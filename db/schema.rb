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

ActiveRecord::Schema.define(version: 2018_11_15_003126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.bigint "period_id"
    t.string "name"
    t.string "place"
    t.integer "time_tolerance"
    t.boolean "state"
    t.string "longitude"
    t.string "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["period_id"], name: "index_events_on_period_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "lastName"
    t.string "email"
    t.string "dni"
    t.string "cellphone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "periods", force: :cascade do |t|
    t.string "name"
    t.datetime "date_init"
    t.datetime "date_finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scheduled_events", force: :cascade do |t|
    t.bigint "event_id"
    t.datetime "date"
    t.datetime "hour_init"
    t.datetime "hour_finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["event_id"], name: "index_scheduled_events_on_event_id"
  end

  create_table "student_assistances", force: :cascade do |t|
    t.bigint "scheduled_event_id"
    t.bigint "student_enrollment_id"
    t.datetime "registered_time"
    t.string "assistance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scheduled_event_id"], name: "index_student_assistances_on_scheduled_event_id"
    t.index ["student_enrollment_id"], name: "index_student_assistances_on_student_enrollment_id"
  end

  create_table "student_enrollments", force: :cascade do |t|
    t.bigint "person_id"
    t.bigint "period_id"
    t.string "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["period_id"], name: "index_student_enrollments_on_period_id"
    t.index ["person_id"], name: "index_student_enrollments_on_person_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "events", "periods"
  add_foreign_key "scheduled_events", "events"
  add_foreign_key "student_assistances", "scheduled_events"
  add_foreign_key "student_assistances", "student_enrollments"
  add_foreign_key "student_enrollments", "people"
  add_foreign_key "student_enrollments", "periods"
end
