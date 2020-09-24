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

# Could not dump table "accounts" because of following StandardError
#   Unknown type 'SERIAL' for column 'id'

  create_table "posts", force: :cascade do |t|
    t.integer "owner"
    t.string "post_id"
    t.text "content"
    t.integer "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

# Could not dump table "sessions" because of following StandardError
#   Unknown type 'SERIAL' for column 'id'

# Could not dump table "users" because of following StandardError
#   Unknown type 'SERIAL' for column 'id'

# Could not dump table "verification_requests" because of following StandardError
#   Unknown type 'SERIAL' for column 'id'

end
