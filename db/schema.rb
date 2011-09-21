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

ActiveRecord::Schema.define(:version => 20110921041336) do

  create_table "appointments", :force => true do |t|
    t.integer  "patients_id"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.boolean  "isCancelled"
    t.integer  "schedular_id"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eeg_labs", :force => true do |t|
    t.string   "identifier"
    t.integer  "hospitals_id"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eeg_tests", :force => true do |t|
    t.integer  "patients_id"
    t.integer  "eeg_labs_id"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.integer  "technicians_id"
    t.string   "clinical_history"
    t.string   "medications"
    t.string   "comments"
    t.boolean  "is_report_generated"
    t.string   "referring_physician"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_permissions", :force => true do |t|
    t.string   "name"
    t.string   "action"
    t.string   "model"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hospitals", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", :force => true do |t|
    t.integer  "mrn"
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "last_name"
    t.date     "birth_date"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "visited_at"
    t.datetime "searched_at"
  end

  create_table "user_roles", :force => true do |t|
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "full_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
