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

ActiveRecord::Schema.define(:version => 20130411172808) do

  create_table "addresses", :force => true do |t|
    t.string   "line1"
    t.string   "line2"
    t.string   "postcode"
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "city_id"
  end

  create_table "attachments", :force => true do |t|
    t.text     "caption"
    t.string   "category"
    t.text     "title"
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "file"
    t.string   "type"
  end

  create_table "business_profiles", :force => true do |t|
    t.string   "category"
    t.string   "company_name"
    t.text     "description"
    t.string   "registration_number"
    t.integer  "user_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "type_of_business"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "state_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "consultants", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "phone"
    t.text     "bio_data"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
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
  end

  add_index "consultants", ["email"], :name => "index_consultants_on_email", :unique => true
  add_index "consultants", ["reset_password_token"], :name => "index_consultants_on_reset_password_token", :unique => true

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "venue"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "program_id"
    t.string   "type"
  end

  create_table "courses_users", :id => false, :force => true do |t|
    t.integer "course_id"
    t.integer "user_id"
  end

  add_index "courses_users", ["course_id", "user_id"], :name => "index_courses_users_on_course_id_and_user_id"
  add_index "courses_users", ["user_id", "course_id"], :name => "index_courses_users_on_user_id_and_course_id"

  create_table "previous_courses_users", :id => false, :force => true do |t|
    t.integer "previous_course_id"
    t.integer "user_id"
  end

  add_index "previous_courses_users", ["previous_course_id", "user_id"], :name => "index_previous_courses_users_on_previous_course_id_and_user_id"
  add_index "previous_courses_users", ["user_id", "previous_course_id"], :name => "index_previous_courses_users_on_user_id_and_previous_course_id"

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "consultant_id"
  end

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "experience"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "ic_number"
    t.string   "phone"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "email",                     :default => "", :null => false
    t.string   "encrypted_password",        :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",             :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "password"
    t.datetime "confirmed_at"
    t.string   "confirmation_token"
    t.datetime "confirmation_sent_at"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "confirmed"
    t.boolean  "has_business_profile"
    t.string   "attended_course"
    t.boolean  "has_attended_course"
    t.string   "gender"
    t.string   "twitter_handle"
    t.string   "facebook_handle"
    t.string   "current_employment_status"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["ic_number"], :name => "index_users_on_ic_number", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_skills", :force => true do |t|
    t.integer  "user_id"
    t.integer  "skill_id"
    t.integer  "experience"
    t.string   "des"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
