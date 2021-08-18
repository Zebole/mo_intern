# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_18_102240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "applications", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "status"
    t.index ["job_id"], name: "index_applications_on_job_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "previous_experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interviews", force: :cascade do |t|
    t.bigint "application_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "url_room", default: "www.zoom.com"
    t.date "interview_date"
    t.boolean "status"
    t.index ["application_id"], name: "index_interviews_on_application_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "salary"
    t.string "duration"
    t.bigint "organisation_id", null: false
    t.string "category"
    t.string "deadline"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organisation_id"], name: "index_jobs_on_organisation_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.integer "phone_number"
    t.string "email"
    t.string "website"
    t.string "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_organisations_on_user_id"
  end

  create_table "qualifications", force: :cascade do |t|
    t.string "qualification_category"
    t.string "qualification_value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_experiences", force: :cascade do |t|
    t.bigint "experience_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["experience_id"], name: "index_user_experiences_on_experience_id"
    t.index ["user_id"], name: "index_user_experiences_on_user_id"
  end

  create_table "user_qualifications", force: :cascade do |t|
    t.bigint "qualification_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["qualification_id"], name: "index_user_qualifications_on_qualification_id"
    t.index ["user_id"], name: "index_user_qualifications_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.string "address"
    t.string "city"
    t.integer "phone_number"
    t.date "date_of_birth"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "applications", "jobs"
  add_foreign_key "applications", "users"
  add_foreign_key "interviews", "applications"
  add_foreign_key "jobs", "organisations"
  add_foreign_key "organisations", "users"
  add_foreign_key "user_experiences", "experiences"
  add_foreign_key "user_experiences", "users"
  add_foreign_key "user_qualifications", "qualifications"
  add_foreign_key "user_qualifications", "users"
end
