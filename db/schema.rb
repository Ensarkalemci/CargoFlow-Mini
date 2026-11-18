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

ActiveRecord::Schema[8.1].define(version: 2026_11_18_220311) do
  create_table "service_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "transport_mode_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["transport_mode_id"], name: "index_service_types_on_transport_mode_id"
  end

  create_table "shipments", force: :cascade do |t|
    t.string "name"
    t.decimal "weight"
    t.decimal "volume"
    t.string "origin"
    t.string "destination"
    t.string "status"
    t.integer "service_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tracking_number"
    t.index ["service_type_id"], name: "index_shipments_on_service_type_id"
  end

  create_table "transport_modes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "service_types", "transport_modes"
  add_foreign_key "shipments", "service_types"
end
