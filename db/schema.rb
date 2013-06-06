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

ActiveRecord::Schema.define(:version => 20130605112409) do

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
  end

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
  end

  add_index "consultants", ["email"], :name => "index_consultants_on_email", :unique => true
  add_index "consultants", ["reset_password_token"], :name => "index_consultants_on_reset_password_token", :unique => true

  create_table "consultants_programs", :force => true do |t|
    t.integer  "consultant_id"
    t.integer  "program_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "venue"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "program_id"
    t.string   "type"
    t.boolean  "status"
    t.integer  "pax",         :default => 0
    t.string   "course_type"
  end

  create_table "courses_users", :id => false, :force => true do |t|
    t.integer "course_id"
    t.integer "user_id"
  end

  add_index "courses_users", ["course_id", "user_id"], :name => "index_courses_users_on_course_id_and_user_id"
  add_index "courses_users", ["user_id", "course_id"], :name => "index_courses_users_on_user_id_and_course_id"

  create_table "educations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "educations_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "education_id"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
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

  create_table "refinery_images", :force => true do |t|
    t.string   "image_mime_type"
    t.string   "image_name"
    t.integer  "image_size"
    t.integer  "image_width"
    t.integer  "image_height"
    t.string   "image_uid"
    t.string   "image_ext"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "refinery_page_part_translations", :force => true do |t|
    t.integer  "refinery_page_part_id"
    t.string   "locale"
    t.text     "body"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "refinery_page_part_translations", ["locale"], :name => "index_refinery_page_part_translations_on_locale"
  add_index "refinery_page_part_translations", ["refinery_page_part_id"], :name => "index_f9716c4215584edbca2557e32706a5ae084a15ef"

  create_table "refinery_page_parts", :force => true do |t|
    t.integer  "refinery_page_id"
    t.string   "title"
    t.text     "body"
    t.integer  "position"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "refinery_page_parts", ["id"], :name => "index_refinery_page_parts_on_id"
  add_index "refinery_page_parts", ["refinery_page_id"], :name => "index_refinery_page_parts_on_refinery_page_id"

  create_table "refinery_page_translations", :force => true do |t|
    t.integer  "refinery_page_id"
    t.string   "locale"
    t.string   "title"
    t.string   "custom_slug"
    t.string   "menu_title"
    t.string   "slug"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "refinery_page_translations", ["locale"], :name => "index_refinery_page_translations_on_locale"
  add_index "refinery_page_translations", ["refinery_page_id"], :name => "index_d079468f88bff1c6ea81573a0d019ba8bf5c2902"

  create_table "refinery_pages", :force => true do |t|
    t.integer  "parent_id"
    t.string   "path"
    t.string   "slug"
    t.boolean  "show_in_menu",        :default => true
    t.string   "link_url"
    t.string   "menu_match"
    t.boolean  "deletable",           :default => true
    t.boolean  "draft",               :default => false
    t.boolean  "skip_to_first_child", :default => false
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "view_template"
    t.string   "layout_template"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "refinery_pages", ["depth"], :name => "index_refinery_pages_on_depth"
  add_index "refinery_pages", ["id"], :name => "index_refinery_pages_on_id"
  add_index "refinery_pages", ["lft"], :name => "index_refinery_pages_on_lft"
  add_index "refinery_pages", ["parent_id"], :name => "index_refinery_pages_on_parent_id"
  add_index "refinery_pages", ["rgt"], :name => "index_refinery_pages_on_rgt"

  create_table "refinery_resources", :force => true do |t|
    t.string   "file_mime_type"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_uid"
    t.string   "file_ext"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

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
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "roles_users", ["role_id"], :name => "index_roles_users_on_role_id"
  add_index "roles_users", ["user_id"], :name => "index_roles_users_on_user_id"

  create_table "seo_meta", :force => true do |t|
    t.integer  "seo_meta_id"
    t.string   "seo_meta_type"
    t.string   "browser_title"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "seo_meta", ["id"], :name => "index_seo_meta_on_id"
  add_index "seo_meta", ["seo_meta_id", "seo_meta_type"], :name => "index_seo_meta_on_seo_meta_id_and_seo_meta_type"

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "experience"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "survey_sections", :force => true do |t|
    t.integer  "survey_id"
    t.string   "title"
    t.text     "description"
    t.string   "reference_identifier"
    t.string   "data_export_identifier"
    t.string   "common_namespace"
    t.string   "common_identifier"
    t.integer  "display_order"
    t.string   "custom_class"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "survey_translations", :force => true do |t|
    t.integer  "survey_id"
    t.string   "locale"
    t.text     "translation"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "surveys", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.text     "description"
    t.boolean  "completed"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "creator_id"
    t.string   "creator_type"
  end

  create_table "surveys_users", :force => true do |t|
    t.integer "survey_id"
    t.integer "user_id"
  end

  add_index "surveys_users", ["survey_id"], :name => "index_surveys_users_on_survey_id"
  add_index "surveys_users", ["user_id"], :name => "index_surveys_users_on_user_id"

  create_table "user_plugins", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.integer  "role_id"
    t.boolean  "is_active"
    t.string   "staff_number"
    t.string   "section"
    t.string   "unit"
    t.string   "office_phone"
    t.boolean  "walk_in_first_time"
    t.boolean  "profile_complete"
    t.string   "type"
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

  create_table "validation_conditions", :force => true do |t|
    t.integer  "validation_id"
    t.string   "rule_key"
    t.string   "operator"
    t.integer  "question_id"
    t.integer  "answer_id"
    t.datetime "datetime_value"
    t.integer  "integer_value"
    t.float    "float_value"
    t.string   "unit"
    t.text     "text_value"
    t.string   "string_value"
    t.string   "response_other"
    t.string   "regexp"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "validations", :force => true do |t|
    t.integer  "answer_id"
    t.string   "rule"
    t.string   "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
