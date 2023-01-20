# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_11_164901) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animal_types", force: :cascade do |t|
    t.string "animal_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "last_name"
    t.string "address"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_owners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_owners_on_reset_password_token", unique: true
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.date "birthdate"
    t.float "weight"
    t.integer "pet_chip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "owner_id"
    t.bigint "animal_type_id"
    t.index ["animal_type_id"], name: "index_pets_on_animal_type_id"
    t.index ["owner_id"], name: "index_pets_on_owner_id"
  end

  create_table "record_types", force: :cascade do |t|
    t.string "record_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade do |t|
    t.string "name"
    t.string "observation"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "vet_id"
    t.bigint "pet_id"
    t.bigint "record_type_id"
    t.index ["pet_id"], name: "index_records_on_pet_id"
    t.index ["record_type_id"], name: "index_records_on_record_type_id"
    t.index ["vet_id"], name: "index_records_on_vet_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "last_name"
    t.string "address"
    t.string "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "veterinaries", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vets", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "specialty"
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "veterinary_id"
    t.index ["email"], name: "index_vets_on_email", unique: true
    t.index ["reset_password_token"], name: "index_vets_on_reset_password_token", unique: true
    t.index ["veterinary_id"], name: "index_vets_on_veterinary_id"
  end

  add_foreign_key "pets", "animal_types"
  add_foreign_key "pets", "owners"
  add_foreign_key "records", "pets"
  add_foreign_key "records", "record_types"
  add_foreign_key "records", "vets"
  add_foreign_key "vets", "veterinaries"
end
