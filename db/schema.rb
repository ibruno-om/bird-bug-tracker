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

ActiveRecord::Schema.define(version: 2021_07_30_153452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  add_foreign_key "issues", "priorities"
  add_foreign_key "issues", "reproducibilities"
  add_foreign_key "issues", "severities"
  add_foreign_key "issues", "statuses"
end
