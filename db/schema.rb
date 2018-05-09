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

ActiveRecord::Schema.define(version: 2018_05_09_204333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mandarin_preferences", force: :cascade do |t|
    t.bigint "user_id"
    t.text "tone_color_1"
    t.text "tone_color_2"
    t.text "tone_color_3"
    t.text "tone_color_4"
    t.text "tone_color_5"
    t.text "actor_tone_1"
    t.text "actor_tone_2"
    t.text "actor_tone_3"
    t.text "actor_tone_4"
    t.text "actor_tone_5"
    t.text "understudy_tone_1"
    t.text "understudy_tone_2"
    t.text "understudy_tone_3"
    t.text "understudy_tone_4"
    t.text "understudy_tone_5"
    t.integer "_pref"
    t.integer "character_variant_pref"
    t.integer "mnemonic_active_field"
    t.integer "notes_active_field"
    t.integer "learned_from_active_field"
    t.integer "etymology_active_field"
    t.integer "image_active_field"
    t.integer "tags_active_field"
    t.integer "opposite_active_field"
    t.integer "similar_active_field"
    t.integer "part_of_speech_active_field"
    t.integer "classifier_active_field"
    t.integer "initial_final_active_field"
    t.integer "vote_active_field"
    t.text "css_pref"
    t.integer "revision_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mandarin_preferences_on_user_id"
  end

  create_table "mandarin_words", force: :cascade do |t|
    t.bigint "user_id"
    t.text "entry_id"
    t.integer "view_status"
    t.text "meaning"
    t.text "radical"
    t.text "stroke_order"
    t.string "character_simplified"
    t.string "character_traditional"
    t.string "pinyin_numbered"
    t.string "pinyin_marked"
    t.string "pinyin"
    t.integer "tone_number"
    t.text "mnemonic"
    t.text "notes"
    t.string "learned_from"
    t.text "etymology"
    t.text "sound_file"
    t.text "image_file"
    t.text "tags"
    t.string "opposites_standard"
    t.string "similar_standard"
    t.string "opposites_traditional"
    t.string "similar_traditional"
    t.string "part_of_speech"
    t.text "classifier"
    t.string "initial"
    t.string "final"
    t.text "duplicate_from"
    t.text "ip_address"
    t.integer "vote_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mandarin_words_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "language"
    t.integer "point_weight"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "mandarin_preferences", "users"
  add_foreign_key "mandarin_words", "users"
end
