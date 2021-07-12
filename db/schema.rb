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

ActiveRecord::Schema.define(version: 2021_07_12_001550) do

  create_table "clients", force: :cascade do |t|
    t.string "username"
    t.float "score"
    t.float "balance"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "offers", force: :cascade do |t|
    t.float "rate"
    t.date "deadline"
    t.text "message"
    t.integer "task_id"
    t.integer "tasker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_offers_on_task_id"
    t.index ["tasker_id"], name: "index_offers_on_tasker_id"
  end

  create_table "taskers", force: :cascade do |t|
    t.string "username"
    t.float "score"
    t.float "balance"
    t.string "skills"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "about"
    t.index ["user_id"], name: "index_taskers_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "deadline"
    t.float "rate"
    t.boolean "is_assigned", default: false
    t.boolean "is_completed", default: false
    t.integer "tasker_id"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_type"
    t.integer "client_tasker_id"
    t.string "client_tasker_type"
    t.index ["client_id"], name: "index_tasks_on_client_id"
    t.index ["tasker_id"], name: "index_tasks_on_tasker_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
