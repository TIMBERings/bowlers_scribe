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

ActiveRecord::Schema.define(version: 20161118014346) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "averages", force: :cascade do |t|
    t.float    "average"
    t.integer  "number_of_games", default: 0, null: false
    t.integer  "total_pinfall",   default: 0, null: false
    t.integer  "season_id"
    t.integer  "member_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["member_id"], name: "index_averages_on_member_id", using: :btree
    t.index ["season_id"], name: "index_averages_on_season_id", using: :btree
  end

  create_table "games", force: :cascade do |t|
    t.integer  "match_id"
    t.integer  "scratch_total"
    t.integer  "handicap"
    t.integer  "total_score"
    t.date     "performed_date"
    t.integer  "member_id"
    t.integer  "game_number"
    t.integer  "game_position"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["match_id"], name: "index_games_on_match_id", using: :btree
    t.index ["member_id"], name: "index_games_on_member_id", using: :btree
  end

  create_table "leagues", force: :cascade do |t|
    t.integer  "manager_id"
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "left_team_id",                   null: false
    t.integer  "right_team_id",                  null: false
    t.integer  "left_lane",                      null: false
    t.integer  "right_lane",                     null: false
    t.float    "left_team_dues",                 null: false
    t.float    "right_team_dues",                null: false
    t.float    "left_points_won",  default: 0.0, null: false
    t.float    "right_points_won", default: 0.0, null: false
    t.integer  "week_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["week_id"], name: "index_matches_on_week_id", using: :btree
  end

  create_table "members_teams", id: false, force: :cascade do |t|
    t.integer  "member_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_members_teams_on_member_id", using: :btree
    t.index ["team_id"], name: "index_members_teams_on_team_id", using: :btree
  end

  create_table "seasons", force: :cascade do |t|
    t.integer  "league_id",                      null: false
    t.integer  "year",                           null: false
    t.integer  "day",                            null: false
    t.date     "start_date",                     null: false
    t.integer  "number_of_weeks",                null: false
    t.integer  "roll_off_weeks",   default: [],               array: true
    t.date     "dates_off",        default: [],               array: true
    t.integer  "handicap_base",    default: 220, null: false
    t.integer  "handicap_percent", default: 10,  null: false
    t.string   "location"
    t.integer  "practice_length"
    t.string   "starts_at"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["league_id"], name: "index_seasons_on_league_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "captain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
    t.datetime "birth_date",                          null: false
    t.string   "usbc_number"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "weeks", force: :cascade do |t|
    t.date     "date",       null: false
    t.integer  "number",     null: false
    t.integer  "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season_id"], name: "index_weeks_on_season_id", using: :btree
  end

  add_foreign_key "games", "matches"
  add_foreign_key "matches", "weeks"
  add_foreign_key "seasons", "leagues"
  add_foreign_key "weeks", "seasons"
end
