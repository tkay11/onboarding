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

ActiveRecord::Schema.define(version: 2021_11_29_200947) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_companies_on_name", unique: true
  end

  create_table "employee_tasks", force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.string "name"
    t.text "description"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_employee_tasks_on_employee_id"
  end

  create_table "employee_teams", force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.bigint "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_employee_teams_on_employee_id"
    t.index ["team_id"], name: "index_employee_teams_on_team_id"
  end

  create_table "employees", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "patronymic"
    t.string "position"
    t.string "email"
    t.string "phone"
    t.string "age"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_employees_on_company_id"
    t.index ["email"], name: "index_employees_on_email", unique: true
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_projects_on_company_id"
    t.index ["name"], name: "index_projects_on_name", unique: true
  end

  create_table "teams", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_teams_on_company_id"
    t.index ["name"], name: "index_teams_on_name", unique: true
  end

  add_foreign_key "employee_tasks", "employees"
  add_foreign_key "employee_teams", "employees"
  add_foreign_key "employee_teams", "teams"
  add_foreign_key "employees", "companies"
  add_foreign_key "projects", "companies"
  add_foreign_key "teams", "companies"
end
