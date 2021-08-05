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

ActiveRecord::Schema.define(version: 2021_08_05_170443) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "access_levels", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "issues", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "visibility"
    t.datetime "submited_date"
    t.text "additional_information"
    t.string "product_version"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "status_id", null: false
    t.bigint "priority_id", null: false
    t.bigint "severity_id", null: false
    t.bigint "reproducibility_id", null: false
    t.bigint "creator_user_id", null: false
    t.bigint "assigned_user_id"
    t.bigint "category_id", null: false
    t.index ["assigned_user_id"], name: "index_issues_on_assigned_user_id"
    t.index ["category_id"], name: "index_issues_on_category_id"
    t.index ["creator_user_id"], name: "index_issues_on_creator_user_id"
    t.index ["priority_id"], name: "index_issues_on_priority_id"
    t.index ["reproducibility_id"], name: "index_issues_on_reproducibility_id"
    t.index ["severity_id"], name: "index_issues_on_severity_id"
    t.index ["status_id"], name: "index_issues_on_status_id"
  end

  create_table "priorities", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reproducibilities", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "severities", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "access_level_id", null: false
    t.index ["access_level_id"], name: "index_users_on_access_level_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "issues", "categories"
  add_foreign_key "issues", "priorities"
  add_foreign_key "issues", "reproducibilities"
  add_foreign_key "issues", "severities"
  add_foreign_key "issues", "statuses"
  add_foreign_key "issues", "users", column: "assigned_user_id"
  add_foreign_key "issues", "users", column: "creator_user_id"
  add_foreign_key "users", "access_levels"
end
