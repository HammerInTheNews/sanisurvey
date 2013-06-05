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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130604012719) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "customers", :force => true do |t|
    t.string   "customer_number"
    t.string   "restaurant_name"
    t.string   "street_address"
    t.string   "postal_code"
    t.string   "province"
    t.string   "phone"
    t.string   "email"
    t.string   "contact_name"
    t.string   "city"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "surveys", :force => true do |t|
    t.string   "date"
    t.string   "kind_of_oil"
    t.boolean  "grill_plate"
    t.boolean  "chicken_fat"
    t.string   "grease_trap_service"
    t.boolean  "outdoor_electricity"
    t.boolean  "install_electicity_outside"
    t.string   "present_equip"
    t.integer  "number_of_fryers"
    t.integer  "capac_of_fryer"
    t.integer  "freq_of_disposal"
    t.string   "suggested_equip"
    t.string   "location"
    t.string   "location_map"
    t.string   "desired_location"
    t.string   "desired_map"
    t.boolean  "integrated_solution"
    t.boolean  "organic_pu"
    t.text     "comments_equip"
    t.text     "comments_recupe"
    t.integer  "customer_id"
    t.integer  "user_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "fullname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
