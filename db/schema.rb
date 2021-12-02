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

ActiveRecord::Schema.define(version: 2021_12_02_210950) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_companies_on_name", unique: true
  end

  create_table "employee_onboarding_step_tasks", force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.bigint "onboarding_step_task_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_employee_onboarding_step_tasks_on_employee_id"
    t.index ["onboarding_step_task_id"], name: "index_employee_onboarding_step_tasks_on_onboarding_step_task_id"
  end

  create_table "employee_services", force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.bigint "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_employee_services_on_employee_id"
    t.index ["service_id"], name: "index_employee_services_on_service_id"
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
    t.string "role"
    t.index ["company_id"], name: "index_employees_on_company_id"
    t.index ["email"], name: "index_employees_on_email", unique: true
  end

  create_table "onboarding_step_tasks", force: :cascade do |t|
    t.bigint "onboarding_step_id", null: false
    t.string "name"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["onboarding_step_id"], name: "index_onboarding_step_tasks_on_onboarding_step_id"
  end

  create_table "onboarding_steps", force: :cascade do |t|
    t.string "name"
    t.string "period"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "poll_answers", force: :cascade do |t|
    t.integer "poll_id"
    t.integer "employer_id"
    t.json "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "poll_questions", force: :cascade do |t|
    t.string "text"
    t.string "description"
    t.integer "poll_id"
    t.integer "number"
    t.string "type"
    t.string "placeholder"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "polls", force: :cascade do |t|
    t.integer "author"
    t.string "link"
    t.string "title"
    t.string "description"
    t.string "type", default: "shared"
    t.integer "counter"
    t.boolean "published"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_projects_on_company_id"
    t.index ["name"], name: "index_projects_on_name", unique: true
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_services_on_name", unique: true
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

  add_foreign_key "employee_onboarding_step_tasks", "employees"
  add_foreign_key "employee_onboarding_step_tasks", "onboarding_step_tasks"
  add_foreign_key "employee_services", "employees"
  add_foreign_key "employee_services", "services"
  add_foreign_key "employee_tasks", "employees"
  add_foreign_key "employee_teams", "employees"
  add_foreign_key "employee_teams", "teams"
  add_foreign_key "employees", "companies"
  add_foreign_key "onboarding_step_tasks", "onboarding_steps"
  add_foreign_key "projects", "companies"
  add_foreign_key "teams", "companies"
end
