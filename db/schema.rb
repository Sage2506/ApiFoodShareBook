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

ActiveRecord::Schema[7.0].define(version: 2022_02_28_160920) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dish_ingredients", force: :cascade do |t|
    t.bigint "dish_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.float "quantity"
    t.bigint "measure_id"
    t.index ["dish_id"], name: "index_dish_ingredients_on_dish_id"
    t.index ["ingredient_id"], name: "index_dish_ingredients_on_ingredient_id"
    t.index ["measure_id"], name: "index_dish_ingredients_on_measure_id"
  end

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.text "recipe"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "image"
    t.bigint "user_id"
    t.integer "diners"
    t.boolean "status", default: true
    t.index ["user_id"], name: "index_dishes_on_user_id"
  end

  create_table "ingredient_measures", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.bigint "ingredient_id"
    t.bigint "measure_id"
    t.index ["ingredient_id"], name: "index_ingredient_measures_on_ingredient_id"
    t.index ["measure_id"], name: "index_ingredient_measures_on_measure_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.bigint "user_id", default: 1
    t.integer "type"
    t.index ["name"], name: "index_ingredients_on_name", unique: true
    t.index ["user_id"], name: "index_ingredients_on_user_id"
  end

  create_table "list_items", force: :cascade do |t|
    t.integer "ingredient_id"
    t.string "name"
    t.integer "quantity"
    t.integer "status", default: 0
    t.bigint "list_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["list_id"], name: "index_list_items_on_list_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.integer "status", default: 0
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "meals", force: :cascade do |t|
    t.datetime "schedule", precision: nil
    t.bigint "dish_id"
    t.integer "status", default: 0
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["dish_id"], name: "index_meals_on_dish_id"
  end

  create_table "measures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "permission_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.bigint "permission_type_id"
    t.string "name"
    t.string "description"
    t.index ["permission_type_id"], name: "index_permissions_on_permission_type_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "system_modules", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "system_permissions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.bigint "permission_type_id"
    t.index ["permission_type_id"], name: "index_system_permissions_on_permission_type_id"
  end

  create_table "user_likes_dishes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "dish_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["dish_id"], name: "index_user_likes_dishes_on_dish_id"
    t.index ["user_id"], name: "index_user_likes_dishes_on_user_id"
  end

  create_table "user_permissions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "permission_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["permission_id"], name: "index_user_permissions_on_permission_id"
    t.index ["user_id"], name: "index_user_permissions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.bigint "role_id"
    t.string "permission_ids"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "dish_ingredients", "measures"
  add_foreign_key "dishes", "users"
  add_foreign_key "ingredient_measures", "ingredients"
  add_foreign_key "ingredient_measures", "measures"
  add_foreign_key "ingredients", "users"
  add_foreign_key "permissions", "permission_types"
  add_foreign_key "system_permissions", "permission_types"
  add_foreign_key "users", "roles"
end
