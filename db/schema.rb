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

ActiveRecord::Schema.define(version: 20170626135108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "user_name"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "rifa_id"
    t.index ["rifa_id"], name: "index_comments_on_rifa_id", using: :btree
  end

  create_table "follows", force: :cascade do |t|
    t.integer  "following_id", null: false
    t.integer  "follower_id",  null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["follower_id"], name: "index_follows_on_follower_id", using: :btree
    t.index ["following_id", "follower_id"], name: "index_follows_on_following_id_and_follower_id", unique: true, using: :btree
    t.index ["following_id"], name: "index_follows_on_following_id", using: :btree
  end

  create_table "numeros", force: :cascade do |t|
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "rifa_id"
    t.integer  "user_id"
    t.boolean  "aproved"
    t.index ["rifa_id"], name: "index_numeros_on_rifa_id", using: :btree
    t.index ["user_id"], name: "index_numeros_on_user_id", using: :btree
  end

  create_table "prizes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "rifa_id"
    t.integer  "importance"
    t.string   "name"
    t.index ["rifa_id"], name: "index_prizes_on_rifa_id", using: :btree
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "valoracion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "rater_id"
    t.index ["user_id"], name: "index_ratings_on_user_id", using: :btree
  end

  create_table "rifas", force: :cascade do |t|
    t.string   "owner"
    t.integer  "price"
    t.integer  "numbers"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.string   "title"
    t.datetime "end_date"
    t.integer  "remaining_numbers"
    t.index ["user_id"], name: "index_rifas_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "mail"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password"
    t.string   "password_digest"
    t.string   "avatar"
    t.boolean  "admin"
  end

  add_foreign_key "rifas", "users"
end
