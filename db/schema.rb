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

ActiveRecord::Schema.define(version: 2019_11_07_155300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actor", primary_key: "actor_id", id: :serial, force: :cascade do |t|
    t.string "first_name", limit: 45, null: false
    t.string "last_name", limit: 45, null: false
    t.datetime "last_update", default: -> { "now()" }, null: false
    t.index ["last_name"], name: "idx_actor_last_name"
  end

  create_table "actors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "last_update"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "address", primary_key: "address_id", id: :serial, force: :cascade do |t|
    t.string "address", limit: 50, null: false
    t.string "address2", limit: 50
    t.string "district", limit: 20, null: false
    t.integer "city_id", limit: 2, null: false
    t.string "postal_code", limit: 10
    t.string "phone", limit: 20, null: false
    t.datetime "last_update", default: -> { "now()" }, null: false
    t.index ["city_id"], name: "idx_fk_city_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "address"
    t.string "address2"
    t.string "district"
    t.integer "city_id"
    t.string "postal_code"
    t.string "phone"
    t.datetime "last_update"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "last_update"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "category", primary_key: "category_id", id: :serial, force: :cascade do |t|
    t.string "name", limit: 25, null: false
    t.datetime "last_update", default: -> { "now()" }, null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "country_id"
    t.datetime "last_update"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "city", primary_key: "city_id", id: :serial, force: :cascade do |t|
    t.string "city", limit: 50, null: false
    t.integer "country_id", limit: 2, null: false
    t.datetime "last_update", default: -> { "now()" }, null: false
    t.index ["country_id"], name: "idx_fk_country_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "last_update"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "country", primary_key: "country_id", id: :serial, force: :cascade do |t|
    t.string "country", limit: 50, null: false
    t.datetime "last_update", default: -> { "now()" }, null: false
  end

  create_table "customer", primary_key: "customer_id", id: :serial, force: :cascade do |t|
    t.integer "store_id", limit: 2, null: false
    t.string "first_name", limit: 45, null: false
    t.string "last_name", limit: 45, null: false
    t.string "email", limit: 50
    t.integer "address_id", limit: 2, null: false
    t.boolean "activebool", default: true, null: false
    t.date "create_date", default: -> { "('now'::text)::date" }, null: false
    t.datetime "last_update", default: -> { "now()" }
    t.integer "active"
    t.index ["address_id"], name: "idx_fk_address_id"
    t.index ["last_name"], name: "idx_last_name"
    t.index ["store_id"], name: "idx_fk_store_id"
  end

  create_table "customers", force: :cascade do |t|
    t.integer "store_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email", default: "", null: false
    t.integer "address_id"
    t.boolean "activebool"
    t.integer "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

# Could not dump table "film" because of following StandardError
#   Unknown type 'mpaa_rating' for column 'rating'

  create_table "film_actor", primary_key: ["actor_id", "film_id"], force: :cascade do |t|
    t.integer "actor_id", limit: 2, null: false
    t.integer "film_id", limit: 2, null: false
    t.datetime "last_update", default: -> { "now()" }, null: false
    t.index ["film_id"], name: "idx_fk_film_id"
  end

  create_table "film_actors", force: :cascade do |t|
    t.integer "actor_id"
    t.integer "film_id"
    t.datetime "last_update"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "film_categories", force: :cascade do |t|
    t.integer "film_id"
    t.integer "category_id"
    t.datetime "last_update"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "film_category", primary_key: ["film_id", "category_id"], force: :cascade do |t|
    t.integer "film_id", limit: 2, null: false
    t.integer "category_id", limit: 2, null: false
    t.datetime "last_update", default: -> { "now()" }, null: false
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "release_year"
    t.integer "language_id"
    t.integer "rental_duration"
    t.float "rental_rate"
    t.integer "length"
    t.integer "replacement_cost"
    t.text "special_features", array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.integer "film_id"
    t.integer "store_id"
    t.datetime "last_update"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "inventory", primary_key: "inventory_id", id: :serial, force: :cascade do |t|
    t.integer "film_id", limit: 2, null: false
    t.integer "store_id", limit: 2, null: false
    t.datetime "last_update", default: -> { "now()" }, null: false
    t.index ["store_id", "film_id"], name: "idx_store_id_film_id"
  end

  create_table "language", primary_key: "language_id", id: :serial, force: :cascade do |t|
    t.string "name", limit: 20, null: false
    t.datetime "last_update", default: -> { "now()" }, null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "last_update"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payment", primary_key: "payment_id", id: :serial, force: :cascade do |t|
    t.integer "customer_id", limit: 2, null: false
    t.integer "staff_id", limit: 2, null: false
    t.integer "rental_id", null: false
    t.decimal "amount", precision: 5, scale: 2, null: false
    t.datetime "payment_date", null: false
    t.index ["customer_id"], name: "idx_fk_customer_id"
    t.index ["rental_id"], name: "idx_fk_rental_id"
    t.index ["staff_id"], name: "idx_fk_staff_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "staff_id"
    t.integer "rental_id"
    t.float "amount"
    t.datetime "payment_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rental", primary_key: "rental_id", id: :serial, force: :cascade do |t|
    t.datetime "rental_date", null: false
    t.integer "inventory_id", null: false
    t.integer "customer_id", limit: 2, null: false
    t.datetime "return_date"
    t.integer "staff_id", limit: 2, null: false
    t.datetime "last_update", default: -> { "now()" }, null: false
    t.index ["inventory_id"], name: "idx_fk_inventory_id"
    t.index ["rental_date", "inventory_id", "customer_id"], name: "idx_unq_rental_rental_date_inventory_id_customer_id", unique: true
  end

  create_table "rentals", force: :cascade do |t|
    t.datetime "rental_date"
    t.integer "inventory_id"
    t.integer "customer_id"
    t.datetime "return_date"
    t.integer "staff_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "staff", primary_key: "staff_id", id: :serial, force: :cascade do |t|
    t.string "first_name", limit: 45, null: false
    t.string "last_name", limit: 45, null: false
    t.integer "address_id", limit: 2, null: false
    t.string "email", limit: 50
    t.integer "store_id", limit: 2, null: false
    t.boolean "active", default: true, null: false
    t.string "username", limit: 16, null: false
    t.string "password", limit: 40
    t.datetime "last_update", default: -> { "now()" }, null: false
    t.binary "picture"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password"
    t.integer "address_id"
    t.string "email", default: "", null: false
    t.integer "store_id"
    t.boolean "active"
    t.datetime "last_update"
    t.binary "picture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_staffs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_staffs_on_reset_password_token", unique: true
  end

  create_table "store", primary_key: "store_id", id: :serial, force: :cascade do |t|
    t.integer "manager_staff_id", limit: 2, null: false
    t.integer "address_id", limit: 2, null: false
    t.datetime "last_update", default: -> { "now()" }, null: false
    t.index ["manager_staff_id"], name: "idx_unq_manager_staff_id", unique: true
  end

  create_table "stores", force: :cascade do |t|
    t.integer "manager_staff_id"
    t.integer "address_id"
    t.datetime "last_update"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "address", "city", primary_key: "city_id", name: "fk_address_city"
  add_foreign_key "city", "country", primary_key: "country_id", name: "fk_city"
  add_foreign_key "customer", "address", primary_key: "address_id", name: "customer_address_id_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "film", "language", primary_key: "language_id", name: "film_language_id_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "film_actor", "actor", primary_key: "actor_id", name: "film_actor_actor_id_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "film_actor", "film", primary_key: "film_id", name: "film_actor_film_id_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "film_category", "category", primary_key: "category_id", name: "film_category_category_id_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "film_category", "film", primary_key: "film_id", name: "film_category_film_id_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "inventory", "film", primary_key: "film_id", name: "inventory_film_id_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "payment", "customer", primary_key: "customer_id", name: "payment_customer_id_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "payment", "rental", primary_key: "rental_id", name: "payment_rental_id_fkey", on_update: :cascade, on_delete: :nullify
  add_foreign_key "payment", "staff", primary_key: "staff_id", name: "payment_staff_id_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "rental", "customer", primary_key: "customer_id", name: "rental_customer_id_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "rental", "inventory", primary_key: "inventory_id", name: "rental_inventory_id_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "rental", "staff", primary_key: "staff_id", name: "rental_staff_id_key"
  add_foreign_key "staff", "address", primary_key: "address_id", name: "staff_address_id_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "store", "address", primary_key: "address_id", name: "store_address_id_fkey", on_update: :cascade, on_delete: :restrict
  add_foreign_key "store", "staff", column: "manager_staff_id", primary_key: "staff_id", name: "store_manager_staff_id_fkey", on_update: :cascade, on_delete: :restrict
end
