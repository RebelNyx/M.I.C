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

ActiveRecord::Schema.define(version: 20170905162432) do

  create_table "follower_mappings", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "jampad_details", force: :cascade do |t|
    t.integer  "no_of_guitar_amps",   null: false
    t.integer  "no_of_bass_amps",     null: false
    t.integer  "no_of_keyboard_amps", null: false
    t.integer  "no_of_microphone",    null: false
    t.integer  "drumkit",             null: false
    t.integer  "sound_system",        null: false
    t.string   "guitar_amps_d"
    t.string   "bass_amps_d"
    t.string   "keyboard_amps_d"
    t.string   "microphone_d"
    t.string   "drumkit_d"
    t.string   "sound_system_d"
    t.integer  "jampad_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "jampad_details", ["jampad_id"], name: "index_jampad_details_on_jampad_id"

  create_table "jampads", force: :cascade do |t|
    t.string   "Email",       null: false
    t.string   "Phone",       null: false
    t.string   "Jampad_Name", null: false
    t.string   "city",        null: false
    t.string   "state",       null: false
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "country"
  end

  add_index "jampads", ["Email"], name: "index_jampads_on_Email", unique: true
  add_index "jampads", ["Phone"], name: "index_jampads_on_Phone", unique: true
  add_index "jampads", ["user_id"], name: "index_jampads_on_user_id"

  create_table "posts", force: :cascade do |t|
    t.text     "content",    null: false
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "userdetails", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "bio",                           null: false
    t.string   "artist_type",                   null: false
    t.string   "fblink"
    t.string   "ytlink"
    t.string   "soundcloud"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "musician",     default: "Band", null: false
    t.integer  "report_count", default: 0
  end

  add_index "userdetails", ["user_id"], name: "index_userdetails_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username",                            null: false
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.string   "profile_photo"
    t.string   "provider"
    t.string   "uid"
    t.integer  "role",                   default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
