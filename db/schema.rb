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

ActiveRecord::Schema.define(version: 20160905215839) do

  create_table "competitions", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "date"
    t.date     "deadline"
    t.decimal  "fee"
    t.string   "instructions_url"
    t.string   "langlong"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "competitions_members", force: :cascade do |t|
    t.integer  "member_id"
    t.integer  "competition_id"
    t.boolean  "trainee"
    t.boolean  "coach"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "level_translations", force: :cascade do |t|
    t.integer  "level_id",   null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.index ["level_id"], name: "index_level_translations_on_level_id"
    t.index ["locale"], name: "index_level_translations_on_locale"
  end

  create_table "levels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer  "itf_id"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "team_id"
    t.integer  "sex_id"
    t.integer  "level_id"
    t.index ["level_id"], name: "index_members_on_level_id"
    t.index ["sex_id"], name: "index_members_on_sex_id"
    t.index ["team_id"], name: "index_members_on_team_id"
  end

  create_table "sex_translations", force: :cascade do |t|
    t.integer  "sex_id",     null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.index ["locale"], name: "index_sex_translations_on_locale"
    t.index ["sex_id"], name: "index_sex_translations_on_sex_id"
  end

  create_table "sexes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.integer  "team_id"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
