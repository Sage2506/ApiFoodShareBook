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

ActiveRecord::Schema.define(version: 20211027172919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dish_ingredients", force: :cascade do |t|
    t.bigint "dish_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.bigint "user_id"
    t.integer "diners"
    t.boolean "status", default: true
    t.index ["user_id"], name: "index_dishes_on_user_id"
  end

  create_table "ingredient_measures", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ingredient_id"
    t.bigint "measure_id"
    t.index ["ingredient_id"], name: "index_ingredient_measures_on_ingredient_id"
    t.index ["measure_id"], name: "index_ingredient_measures_on_measure_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "measures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permission_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "permission_type_id"
    t.string "name"
    t.string "description"
    t.index ["permission_type_id"], name: "index_permissions_on_permission_type_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "system_modules", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "system_permissions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "permission_type_id"
    t.index ["permission_type_id"], name: "index_system_permissions_on_permission_type_id"
  end

  create_table "user_likes_dishes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "dish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_user_likes_dishes_on_dish_id"
    t.index ["user_id"], name: "index_user_likes_dishes_on_user_id"
  end

  create_table "user_permissions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "permission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_user_permissions_on_permission_id"
    t.index ["user_id"], name: "index_user_permissions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "role_id"
    t.string "permission_ids"
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "dish_ingredients", "measures"
  add_foreign_key "dishes", "users"
  add_foreign_key "ingredient_measures", "ingredients"
  add_foreign_key "ingredient_measures", "measures"
  add_foreign_key "permissions", "permission_types"
  add_foreign_key "system_permissions", "permission_types"
  add_foreign_key "users", "roles"
end
