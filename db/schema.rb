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

ActiveRecord::Schema.define(version: 20170503002902) do

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "training_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_bookings_on_deleted_at", where: "deleted_at IS NULL"
    t.index ["training_id"], name: "index_bookings_on_training_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "guests", force: :cascade do |t|
    t.text     "name"
    t.integer  "ci"
    t.integer  "training_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.datetime "deleted_at"
    t.index ["ci"], name: "index_guests_on_ci", unique: true
    t.index ["deleted_at"], name: "index_guests_on_deleted_at", where: "deleted_at IS NULL"
    t.index ["training_id"], name: "index_guests_on_training_id"
    t.index ["user_id", "created_at"], name: "index_guests_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_guests_on_user_id"
  end

  create_table "rms", force: :cascade do |t|
    t.text     "content"
    t.integer  "quantity"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "max"
    t.index ["user_id", "created_at"], name: "index_rms_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_rms_on_user_id"
  end

  create_table "trainings", force: :cascade do |t|
    t.integer  "cantidad"
    t.text     "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "guestslot"
    t.index ["hora"], name: "index_trainings_on_hora"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "ci"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.string   "activation_digest"
    t.boolean  "activated",         default: true
    t.datetime "activated_at"
    t.index ["ci"], name: "index_users_on_ci", unique: true
  end

end
