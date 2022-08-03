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

ActiveRecord::Schema.define(version: 2022_08_03_193234) do

  create_table "agents", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "rating"
    t.string "agent_fee"
    t.string "agency"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "state"
  end

  create_table "listings", force: :cascade do |t|
    t.integer "price"
    t.integer "built"
    t.integer "sqrft"
    t.integer "bath"
    t.integer "bed"
    t.boolean "laundry"
    t.boolean "super"
    t.boolean "to_buy"
    t.boolean "to_rent"
    t.string "addy"
    t.integer "agent_id"
    t.integer "city_id"
    t.integer "zipcode"
    t.text "picture_url"
  end

end
