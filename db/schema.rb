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

ActiveRecord::Schema[7.0].define(version: 2023_02_07_004613) do
  create_table "client_providers", force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "provider_id", null: false
    t.string "plan_type"
    t.index ["client_id"], name: "index_client_providers_on_client_id"
    t.index ["provider_id"], name: "index_client_providers_on_provider_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "journals", force: :cascade do |t|
    t.text "entry"
    t.datetime "posted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "client_id", null: false
    t.index ["client_id"], name: "index_journals_on_client_id"
    t.index ["posted_at"], name: "index_journals_on_posted_at"
  end

  create_table "providers", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "company_name"
  end

  add_foreign_key "journals", "clients"
end
