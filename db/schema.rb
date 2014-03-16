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

ActiveRecord::Schema.define(version: 20140316064328) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.integer  "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "menu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items_meals", id: false, force: true do |t|
    t.integer  "meal_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meals", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.integer  "vendor_id"
    t.string   "nonvegtag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meals_time_plans", id: false, force: true do |t|
    t.integer  "meal_id"
    t.integer  "time_plan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.date     "from"
    t.date     "to"
    t.integer  "user_id"
    t.integer  "meal_id"
    t.integer  "time_plan_id"
    t.integer  "uaddress_id"
    t.integer  "price_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prices", force: true do |t|
    t.integer  "mrp"
    t.integer  "meal_id"
    t.integer  "time_plan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.text     "comment"
    t.integer  "vendor_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_areas", force: true do |t|
    t.string   "location"
    t.integer  "pincode"
    t.string   "city"
    t.integer  "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_plans", force: true do |t|
    t.integer  "days"
    t.integer  "plan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uaddresses", force: true do |t|
    t.integer  "user_id"
    t.string   "company_name"
    t.string   "flat_no"
    t.string   "street_address"
    t.string   "location"
    t.string   "city"
    t.string   "landmark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vaddresses", force: true do |t|
    t.integer  "vendor_id"
    t.string   "bldg_no"
    t.string   "street_address"
    t.string   "location"
    t.string   "city"
    t.string   "landmark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
