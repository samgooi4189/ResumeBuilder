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

ActiveRecord::Schema.define(version: 20140429052746) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "experience_id"
  end

  add_index "companies", ["experience_id"], name: "index_companies_on_experience_id"

  create_table "educations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resume_info_id"
  end

  add_index "educations", ["resume_info_id"], name: "index_educations_on_resume_info_id"

  create_table "experiences", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resume_info_id"
  end

  add_index "experiences", ["resume_info_id"], name: "index_experiences_on_resume_info_id"

  create_table "information", force: true do |t|
    t.string   "name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city_state_zip"
    t.string   "h_phone"
    t.string   "b_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resume_info_id"
    t.integer  "user_id"
  end

  add_index "information", ["resume_info_id"], name: "index_information_on_resume_info_id"
  add_index "information", ["user_id"], name: "index_information_on_user_id"

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "relationship"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "recommendation_id"
  end

  add_index "people", ["recommendation_id"], name: "index_people_on_recommendation_id"

  create_table "positions", force: true do |t|
    t.string   "name"
    t.text     "tasks"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recommendations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resume_info_id"
  end

  add_index "recommendations", ["resume_info_id"], name: "index_recommendations_on_resume_info_id"

  create_table "resume_infos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "resume_infos", ["user_id"], name: "index_resume_infos_on_user_id"

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "degree"
    t.float    "gpa"
    t.string   "major"
    t.date     "grad_date"
    t.text     "other"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "education_id"
  end

  add_index "schools", ["education_id"], name: "index_schools_on_education_id"

  create_table "skills", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "skillset_id"
  end

  add_index "skills", ["skillset_id"], name: "index_skills_on_skillset_id"

  create_table "skillsets", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resume_info_id"
  end

  add_index "skillsets", ["resume_info_id"], name: "index_skillsets_on_resume_info_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
