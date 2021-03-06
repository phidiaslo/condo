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

ActiveRecord::Schema.define(version: 20141010025433) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.string   "subdomain"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bulletins", force: true do |t|
    t.string   "post_to"
    t.string   "subject_title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "contact_no"
    t.string   "importance"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faqs", force: true do |t|
    t.string   "property_name"
    t.string   "question"
    t.text     "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.string   "inv_no"
    t.date     "inv_date"
    t.date     "due_date"
    t.string   "lot_no"
    t.string   "recipient"
    t.text     "address"
    t.text     "description"
    t.decimal  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "property_name"
    t.string   "status"
  end

  create_table "owners", force: true do |t|
    t.string   "name"
    t.string   "ic_no"
    t.string   "email"
    t.string   "mobile_no"
    t.string   "emergency_no"
    t.text     "address"
    t.string   "property_name"
    t.string   "lot_no"
    t.string   "ref_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "client"
    t.boolean  "archived",   default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "sc_rate",      precision: 10, scale: 2
    t.decimal  "sinking_rate", precision: 10, scale: 2
  end

  create_table "residents", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "ic_no"
    t.string   "gender"
    t.date     "birthday"
    t.string   "marital_status"
    t.string   "profession"
    t.string   "property_name"
    t.string   "lot_no"
    t.string   "mobile_no"
    t.string   "emergency_no"
    t.string   "resident_type"
  end

  add_index "residents", ["email"], name: "index_residents_on_email", unique: true, using: :btree
  add_index "residents", ["reset_password_token"], name: "index_residents_on_reset_password_token", unique: true, using: :btree

  create_table "units", force: true do |t|
    t.string   "lot_no"
    t.string   "unit_type"
    t.string   "water_meter"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "property_name"
  end

  create_table "unittypes", force: true do |t|
    t.string   "name"
    t.integer  "sqft"
    t.string   "property_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
