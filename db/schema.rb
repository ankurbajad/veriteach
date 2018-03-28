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

ActiveRecord::Schema.define(version: 20180328110518) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: :cascade do |t|
    t.string "user_name"
    t.string "social_security"
    t.string "date_of_birth"
    t.text "street_address"
    t.string "state"
    t.string "city"
    t.string "zip_code"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "electronic_signature"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "contact_name"
    t.string "email"
    t.string "phone_number"
    t.string "street_address"
    t.string "state"
    t.string "city"
    t.string "zip_code"
    t.text "comments"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email_verify_code"
  end

  create_table "district_employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "job_title"
    t.string "phone_number"
    t.string "email_verify_code"
    t.string "electronic_signature"
    t.integer "district_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "district_employments", force: :cascade do |t|
    t.string "school_name"
    t.string "school_nces"
    t.text "school_street_address"
    t.string "school_state"
    t.string "school_city"
    t.string "school_zipcode"
    t.string "school_position"
    t.string "school_grade"
    t.string "school_subject"
    t.string "school_date_service_from"
    t.string "school_date_service_to"
    t.string "school_contract_year"
    t.string "school_employment_status"
    t.string "school_hour_rate"
    t.string "school_certificate_service"
    t.string "school_reemployment"
    t.integer "district_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "district_insurances", force: :cascade do |t|
    t.string "insurance_day"
    t.string "insurance_from"
    t.string "insurance_to"
    t.string "health_state_insurance"
    t.string "insurance_option"
    t.string "hmp"
    t.string "hdp"
    t.string "family_coverage"
    t.string "tenure_status"
    t.integer "district_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "district_review_performances", force: :cascade do |t|
    t.string "school_name"
    t.string "school_rating"
    t.string "school_from"
    t.string "school_to"
    t.integer "district_review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "district_reviews", force: :cascade do |t|
    t.string "review"
    t.integer "district_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.string "nces"
    t.string "contact"
    t.string "email"
    t.string "phone_number"
    t.text "street_address"
    t.string "state"
    t.string "city"
    t.string "zip_code"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "candidate_id"
    t.string "institution_type"
    t.string "regional_accrededation_agency"
    t.string "state_of_accrededation"
    t.string "accrededation_start"
    t.string "accrededation_end"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.text "social_security"
    t.string "email"
    t.string "contact_number"
    t.string "salary_inclusion"
    t.string "document_retrieval"
    t.string "terms_condition"
    t.string "electronic_signature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "user_name"
    t.string "social_security"
    t.string "date_of_birth"
    t.text "street_address"
    t.string "state"
    t.string "city"
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "electronic_signature"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
