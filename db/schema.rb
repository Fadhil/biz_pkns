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

ActiveRecord::Schema.define(:version => 20140522052040) do

  create_table "addresses", :force => true do |t|
    t.string   "line1"
    t.string   "line2"
    t.string   "postcode"
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "city_id"
    t.string   "phone"
    t.string   "fax"
  end

  create_table "advert_transactions", :force => true do |t|
    t.integer  "advert_id"
    t.string   "title"
    t.string   "advert_action"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "adverts", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "location"
    t.string   "time"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "paid_for"
    t.boolean  "active"
    t.integer  "weight"
    t.integer  "capacity"
    t.text     "content"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "course_type"
    t.string   "program_name"
    t.date     "course_start_date"
    t.date     "course_end_date"
    t.string   "advert_type"
    t.integer  "consultant_id"
    t.integer  "user_id"
    t.boolean  "requested"
    t.boolean  "admin_created"
    t.string   "request_status"
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

  create_table "attendance_lists", :force => true do |t|
    t.integer  "course_id"
    t.integer  "program_id"
    t.integer  "max_attendees"
    t.integer  "attendee_counter"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.boolean  "completed"
  end

  create_table "attendees", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "email"
    t.string   "ic_number"
    t.boolean  "attended"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "attendance_list_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "attendance_status"
  end

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
    t.string   "category"
  end

  add_index "blogs", ["slug"], :name => "index_blogs_on_slug", :unique => true

  create_table "business_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.boolean  "business_registered"
    t.string   "customer1"
    t.string   "customer2"
    t.string   "customer3"
    t.string   "line1"
    t.string   "line2"
    t.string   "postcode"
    t.integer  "city_id"
    t.string   "phone"
    t.string   "fax"
  end

  create_table "businesses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "business_profile_id"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "state_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "completed_surveys", :force => true do |t|
    t.integer  "user_id"
    t.integer  "survey_id"
    t.boolean  "completed"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "completed_surveys", ["survey_id"], :name => "index_completed_surveys_on_survey_id"
  add_index "completed_surveys", ["user_id"], :name => "index_completed_surveys_on_user_id"

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
    t.string   "company_name"
    t.boolean  "is_active"
    t.boolean  "active"
    t.boolean  "profile_complete"
    t.string   "active_from"
    t.string   "date"
    t.date     "active_to"
    t.string   "register_date"
  end

  add_index "consultants", ["email"], :name => "index_consultants_on_email", :unique => true
  add_index "consultants", ["reset_password_token"], :name => "index_consultants_on_reset_password_token", :unique => true

  create_table "consultants_programs", :force => true do |t|
    t.integer  "consultant_id"
    t.integer  "program_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "course_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "course_reports", :force => true do |t|
    t.integer  "course_id"
    t.text     "course_details"
    t.text     "course_summary"
    t.date     "report_date"
    t.string   "course_title"
    t.date     "course_date"
    t.string   "consultant_email"
    t.integer  "course_targeted_attendees"
    t.integer  "course_actual_attendees"
    t.integer  "course_no_of_vips"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "course_program"
    t.integer  "course_program_id"
    t.string   "course_type"
    t.string   "course_venue"
    t.integer  "consultant_id"
    t.boolean  "finalized"
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "venue"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "program_id"
    t.string   "type"
    t.boolean  "status"
    t.integer  "pax",                :default => 0
    t.string   "course_type"
    t.integer  "course_category_id"
  end

  create_table "courses_users", :id => false, :force => true do |t|
    t.integer "course_id"
    t.integer "user_id"
  end

  add_index "courses_users", ["course_id", "user_id"], :name => "index_courses_users_on_course_id_and_user_id"
  add_index "courses_users", ["user_id", "course_id"], :name => "index_courses_users_on_user_id_and_course_id"

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "educations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "educations_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "education_id"
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "start_date"
    t.integer  "end_date"
  end

  add_index "educations_users", ["education_id", "user_id"], :name => "index_educations_users_on_education_id_and_user_id"
  add_index "educations_users", ["user_id", "education_id"], :name => "index_educations_users_on_user_id_and_education_id"

  create_table "letters", :force => true do |t|
    t.string   "subject"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "line1"
    t.string   "line2"
    t.string   "postcode"
    t.integer  "city_id"
    t.integer  "user_id"
    t.string   "city"
    t.string   "state"
  end

  create_table "memberships", :force => true do |t|
    t.string   "member_number"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "category"
  end

  create_table "newsletters", :force => true do |t|
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "consultant_id"
    t.boolean  "sent"
  end

  create_table "newsletters_templates", :force => true do |t|
    t.string   "name"
    t.text     "template"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "past_attendances", :force => true do |t|
    t.string   "program"
    t.string   "course"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "venue"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "ic_number"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.boolean  "successful"
    t.boolean  "newly_generated"
    t.boolean  "latest_uploaded"
  end

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
    t.boolean  "active"
  end

  create_table "questions", :force => true do |t|
    t.string   "title"
    t.string   "type"
    t.string   "option1"
    t.string   "option2"
    t.string   "option3"
    t.string   "option4"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "survey_id"
    t.string   "question_type"
  end

  create_table "redactor_assets", :force => true do |t|
    t.integer  "user_id"
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "redactor_assets", ["assetable_type", "assetable_id"], :name => "idx_redactor_assetable"
  add_index "redactor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_redactor_assetable_type"

  create_table "responses", :force => true do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.string   "answer"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "roles", :force => true do |t|
    t.string "name"
    t.string "title"
  end

  create_table "roles_users", :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "experience"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "surveys", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.text     "description"
    t.boolean  "completed"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "creator_id"
    t.string   "creator_type"
    t.boolean  "sent"
    t.string   "type"
    t.integer  "course_report_id"
  end

  create_table "surveys_users", :force => true do |t|
    t.integer "survey_id"
    t.integer "user_id"
  end

  add_index "surveys_users", ["survey_id"], :name => "index_surveys_users_on_survey_id"
  add_index "surveys_users", ["user_id"], :name => "index_surveys_users_on_user_id"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], :name => "taggings_idx", :unique => true

  create_table "tags", :force => true do |t|
    t.string  "name"
    t.integer "taggings_count", :default => 0
  end

  add_index "tags", ["name"], :name => "index_tags_on_name", :unique => true

  create_table "targets", :force => true do |t|
    t.integer  "course_category_id"
    t.integer  "target_attendance"
    t.integer  "year"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "number_of_courses"
    t.integer  "program_id"
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
    t.string   "has_attended_course"
    t.boolean  "has_atended_course"
    t.string   "gender"
    t.string   "twitter_handle"
    t.string   "facebook_handle"
    t.string   "current_employment_status"
    t.integer  "role_id"
    t.boolean  "is_active"
    t.string   "staff_number"
    t.string   "section"
    t.string   "unit"
    t.string   "office_phone"
    t.boolean  "walk_in_first_time"
    t.boolean  "profile_complete"
    t.string   "type"
    t.text     "bio_data"
    t.string   "company_name"
    t.boolean  "active"
    t.string   "active_from"
    t.string   "date"
    t.date     "active_to"
    t.string   "register_date"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["ic_number"], :name => "index_users_on_ic_number", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["role_id"], :name => "index_users_on_role_id"

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
