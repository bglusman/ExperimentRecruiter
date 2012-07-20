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

ActiveRecord::Schema.define(:version => 20120720203155) do

  create_table "categories", :force => true do |t|
    t.string "name"
  end

  create_table "choices", :force => true do |t|
    t.string  "text"
    t.integer "property_id"
  end

  add_index "choices", ["property_id"], :name => "index_choices_on_property_id"

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.boolean  "all_day"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at"
    t.integer  "experiment_id"
  end

  add_index "events", ["experiment_id"], :name => "index_events_on_experiment_id"

  create_table "experiment_participants", :force => true do |t|
    t.string "recruitment_id"
    t.string "subject_id"
    t.string "profile_id"
  end

  add_index "experiment_participants", ["profile_id"], :name => "index_experiment_participants_on_profile_id"
  add_index "experiment_participants", ["recruitment_id"], :name => "index_experiment_participants_on_recruitment_id"
  add_index "experiment_participants", ["subject_id"], :name => "index_experiment_participants_on_subject_id"

  create_table "experiment_resources", :force => true do |t|
    t.integer "resource_id"
    t.integer "experiment_id"
  end

  add_index "experiment_resources", ["experiment_id"], :name => "index_experiment_resources_on_experiment_id"
  add_index "experiment_resources", ["resource_id"], :name => "index_experiment_resources_on_resource_id"

  create_table "experiments", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.integer  "category_id"
    t.datetime "created_at"
    t.integer  "target_participants"
    t.integer  "target_emails"
  end

  add_index "experiments", ["category_id"], :name => "index_experiments_on_category_id"

  create_table "profiles", :force => true do |t|
    t.string   "name"
    t.string   "age"
    t.string   "major"
    t.string   "email"
    t.string   "school_id"
    t.string   "notes"
    t.string   "status"
    t.string   "mobile"
    t.string   "sex"
    t.integer  "subject_id"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  add_index "profiles", ["subject_id"], :name => "index_profiles_on_subject_id"

  create_table "properties", :force => true do |t|
    t.string  "name"
    t.string  "text"
    t.boolean "multiple_choice"
    t.string  "response"
    t.boolean "mutually_exclusive"
  end

  create_table "recruitments", :force => true do |t|
    t.string "experiment_id"
  end

  add_index "recruitments", ["experiment_id"], :name => "index_recruitments_on_experiment_id"

  create_table "resources", :force => true do |t|
    t.string "name"
  end

  create_table "responses", :force => true do |t|
    t.integer "profile_id"
    t.integer "choice_id"
  end

  add_index "responses", ["choice_id"], :name => "index_responses_on_choice_id"
  add_index "responses", ["profile_id"], :name => "index_responses_on_profile_id"

  create_table "subjects", :force => true do |t|
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

  add_index "subjects", ["email"], :name => "index_subjects_on_email"
  add_index "subjects", ["reset_password_token"], :name => "index_subjects_on_reset_password_token"

  create_table "users", :force => true do |t|
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

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
