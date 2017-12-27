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

ActiveRecord::Schema.define(version: 20171002105300) do

  create_table "branches", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.integer "status"
    t.integer "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_branches_on_section_id"
  end

  create_table "post_graduations", force: :cascade do |t|
    t.string "name"
    t.string "initials"
    t.integer "seniority"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.string "initials"
    t.integer "status"
    t.text "observation"
    t.integer "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "section_id"
    t.integer "post_graduation_id"
    t.string "war_name"
    t.string "register"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["post_graduation_id"], name: "index_users_on_post_graduation_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["section_id"], name: "index_users_on_section_id"
  end

  create_table "visitations", force: :cascade do |t|
    t.integer "visitor_id"
    t.integer "user_id"
    t.integer "section_id"
    t.datetime "input"
    t.datetime "output"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_visitations_on_section_id"
    t.index ["user_id"], name: "index_visitations_on_user_id"
    t.index ["visitor_id"], name: "index_visitations_on_visitor_id"
  end

  create_table "visitors", force: :cascade do |t|
    t.string "name"
    t.string "register"
    t.string "phone"
    t.integer "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
