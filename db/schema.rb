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

ActiveRecord::Schema.define(version: 2020_09_24_193058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", id: :serial, force: :cascade do |t|
    t.string "compound_id", limit: 255, null: false
    t.integer "user_id", null: false
    t.string "provider_type", limit: 255, null: false
    t.string "provider_id", limit: 255, null: false
    t.string "provider_account_id", limit: 255, null: false
    t.text "refresh_token"
    t.text "access_token"
    t.datetime "access_token_expires"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["compound_id"], name: "compound_id", unique: true
    t.index ["provider_account_id"], name: "provider_account_id"
    t.index ["provider_id"], name: "provider_id"
    t.index ["user_id"], name: "user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "owner"
    t.string "post_id"
    t.text "content"
    t.integer "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sessions", id: :serial, force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "expires", null: false
    t.string "session_token", limit: 255, null: false
    t.string "access_token", limit: 255, null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["access_token"], name: "access_token", unique: true
    t.index ["session_token"], name: "session_token", unique: true
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "email", limit: 255
    t.datetime "email_verified"
    t.string "image", limit: 255
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["email"], name: "email", unique: true
  end

  create_table "verification_requests", id: :serial, force: :cascade do |t|
    t.string "identifier", limit: 255, null: false
    t.string "token", limit: 255, null: false
    t.datetime "expires", null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["token"], name: "token", unique: true
  end

end
