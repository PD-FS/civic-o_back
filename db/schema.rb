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

ActiveRecord::Schema.define(version: 2018_09_01_201920) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "question_types", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.string "color"
    t.boolean "sn_active_qt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "question_type_id"
    t.text "txt_desc_question"
    t.integer "score_question"
    t.integer "level"
    t.boolean "sn_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_type_id"], name: "index_questions_on_question_type_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "name"
    t.text "lastname"
    t.date "birthday"
    t.text "gender"
    t.text "country"
    t.text "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "questions", "question_types"
end
