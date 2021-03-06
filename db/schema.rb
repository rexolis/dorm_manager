# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170130145343) do

  create_table "accountabilities", force: :cascade do |t|
    t.string   "classification"
    t.text     "description"
    t.integer  "payment"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "remarks"
    t.date     "due_date"
  end

  create_table "announcements", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "applicants", force: :cascade do |t|
    t.string   "name"
    t.string   "student_number"
    t.string   "course_year"
    t.string   "home_address"
    t.boolean  "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "family_name"
    t.string   "middle_name"
    t.string   "email"
  end

  create_table "microposts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"

  create_table "permissions", force: :cascade do |t|
    t.string   "applicant"
    t.string   "student_number"
    t.string   "permit_type"
    t.text     "description"
    t.boolean  "approved"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.date     "permit_date"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin"
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "student_number"
    t.string   "course_and_year"
    t.string   "sts_bracket"
    t.string   "home_address"
    t.string   "contact_number"
    t.date     "birthday"
    t.integer  "age"
    t.string   "family_name"
    t.string   "middle_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
