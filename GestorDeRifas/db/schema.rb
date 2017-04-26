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

ActiveRecord::Schema.define(version: 20170426154734) do

  create_table "boughts", force: :cascade do |t|
    t.string   "username"
    t.integer  "rifa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calficacions", force: :cascade do |t|
    t.integer  "estrellas"
    t.string   "username"
    t.integer  "rifa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "follows", force: :cascade do |t|
    t.string   "username1"
    t.string   "username2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owns", force: :cascade do |t|
    t.string   "username"
    t.integer  "rifa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "premios", force: :cascade do |t|
    t.string   "premio"
    t.integer  "importancia"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rifas", force: :cascade do |t|
    t.datetime "fecha_inicio"
    t.datetime "fecha_termino"
    t.string   "titulo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tiene_premios", force: :cascade do |t|
    t.integer  "rifa_id"
    t.integer  "premio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.text     "bio"
    t.integer  "age"
    t.string   "email"
    t.binary   "profile_pic"
    t.string   "password"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
