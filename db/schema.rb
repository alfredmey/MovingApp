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

ActiveRecord::Schema.define(version: 20151119040432) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "agent_code"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipments", force: :cascade do |t|
    t.integer  "weight"
    t.integer  "company_id"
    t.string   "discount"
    t.text     "notes"
    t.integer  "user_id"
    t.integer  "origin_id"
    t.integer  "dest_id"
    t.string   "origin_agent"
    t.string   "dest_agent"
    t.string   "carrier"
    t.string   "reg_no"
    t.string   "atlas_no"
    t.string   "gbl_no"
    t.string   "move_type"
    t.integer  "miles"
    t.string   "hauler"
    t.string   "surveyor"
    t.string   "booker"
    t.boolean  "apu"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "o_name"
    t.string   "o_phone"
    t.string   "o_cell"
    t.string   "o_notes"
    t.string   "o_address"
    t.string   "o_city"
    t.string   "o_state"
    t.integer  "o_zip"
    t.string   "d_name"
    t.string   "d_phone"
    t.string   "d_cell"
    t.string   "d_notes"
    t.string   "d_address"
    t.string   "d_city"
    t.string   "d_state"
    t.integer  "d_zip"
    t.date     "pack_date"
    t.date     "pick_date"
    t.date     "deliver_date"
    t.date     "survey_date"
    t.date     "scan_date"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "role",                   default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "driver"
    t.boolean  "sales"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
