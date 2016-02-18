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

ActiveRecord::Schema.define(version: 20160209135743) do

  create_table "matches", force: :cascade do |t|
    t.integer  "tournaments_id", limit: 4
    t.string   "teams_1",        limit: 255
    t.string   "teams_2",        limit: 255
    t.string   "score",          limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "matches", ["teams_1"], name: "index_matches_on_teams_1", using: :btree
  add_index "matches", ["teams_2"], name: "index_matches_on_teams_2", using: :btree
  add_index "matches", ["tournaments_id"], name: "index_matches_on_tournaments_id", using: :btree

  create_table "news", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.text     "summary",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "lastname",   limit: 255
    t.string   "firstname",  limit: 255
    t.string   "number",     limit: 255
    t.string   "place",      limit: 255, default: "Polyvalent"
    t.boolean  "picture",                default: false
    t.string   "staff",      limit: 255
    t.boolean  "adult",                  default: true
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  create_table "presences", force: :cascade do |t|
    t.integer  "tournaments_id", limit: 4
    t.string   "name",           limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "presences", ["name"], name: "index_presences_on_name", using: :btree
  add_index "presences", ["tournaments_id"], name: "index_presences_on_tournaments_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string   "city",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.string   "place",        limit: 255
    t.string   "date",         limit: 255
    t.text     "link_picture", limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.boolean  "admin",                              default: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
