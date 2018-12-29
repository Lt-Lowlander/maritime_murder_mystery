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

ActiveRecord::Schema.define(version: 2018_12_15_015829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "power_name", null: false
    t.text "power_desc", null: false
    t.integer "quant_total", null: false
    t.integer "quant_used", default: 0, null: false
    t.integer "quant_left", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_abilities_on_user_id"
  end

  create_table "beginner_tips", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "advice", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_beginner_tips_on_user_id"
  end

  create_table "char_infos", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "info_desc", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_char_infos_on_user_id"
  end

  create_table "char_secrets", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "sec_desc", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_char_secrets_on_user_id"
  end

  create_table "char_stories", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "char_story", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_char_stories_on_user_id"
  end

  create_table "factions", force: :cascade do |t|
    t.string "fac_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_rules", force: :cascade do |t|
    t.string "rule_name", null: false
    t.text "rule_desc", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "goal_objective", null: false
    t.text "goal_details", null: false
    t.integer "goal_achieved", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "narratives", force: :cascade do |t|
    t.text "heading", null: false
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "other_people", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "lead_name", null: false
    t.text "lead_info", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_other_people_on_user_id"
  end

  create_table "player_notes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "author_id", null: false
    t.integer "subject_id", null: false
    t.string "subject_char", null: false
    t.text "note_contents", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_player_notes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "faction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role", default: "member", null: false
    t.string "position"
    t.string "character", null: false
    t.string "title", null: false
    t.string "tagline", null: false
    t.string "attendee", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["faction_id"], name: "index_users_on_faction_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
