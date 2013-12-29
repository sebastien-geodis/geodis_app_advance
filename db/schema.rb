# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131229013339) do

  create_table "intervention_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interventions", force: true do |t|
    t.integer  "user_id"
    t.integer  "intervention_status_id"
    t.integer  "vip_id"
    t.boolean  "is_complete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "monitoring_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "monitorings", force: true do |t|
    t.string   "oscar_ticket_id"
    t.integer  "user_id"
    t.text     "comment",                 limit: 255
    t.date     "date_ouverture"
    t.date     "date_estimation_cloture"
    t.date     "date_cloture"
    t.integer  "vip_id"
    t.integer  "monitoring_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "trigramme"
  end

  create_table "user_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.boolean  "is_admin"
    t.integer  "user_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "vip_id"
    t.boolean  "is_moderator"
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vips", force: true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "localisation"
    t.string   "fonction"
    t.string   "service"
    t.string   "email"
    t.string   "tel_fixe"
    t.string   "tel_portable"
    t.string   "assistante"
    t.text     "identifiants"
    t.text     "materiel"
    t.string   "domaine"
    t.text     "divers"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_update_at"
  end

end
