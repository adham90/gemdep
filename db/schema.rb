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

ActiveRecord::Schema.define(version: 20161116232000) do

  create_table "dependencies", force: :cascade do |t|
    t.string  "name",                null: false
    t.integer "os_type", default: 0, null: false
    t.integer "rgem_id"
    t.index ["name", "os_type"], name: "index_dependencies_on_name_and_os_type", unique: true
    t.index ["rgem_id"], name: "index_dependencies_on_rgem_id"
  end

  create_table "rgems", force: :cascade do |t|
    t.string "name", null: false
    t.index ["name"], name: "index_rgems_on_name"
  end

end
