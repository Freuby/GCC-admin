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

ActiveRecord::Schema.define(version: 20171013135435) do

  create_table "cours", force: :cascade do |t|
    t.string   "nomvil",        default: "",                    null: false
    t.string   "adresse",       default: "",                    null: false
    t.string   "cp",            default: "",                    null: false
    t.string   "telephon",      default: "",                    null: false
    t.integer  "typcours",      default: 0,                     null: false
    t.datetime "dateh",                                         null: false
    t.time     "duree",         default: '2000-01-01 00:00:00', null: false
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "jour"
    t.integer  "enseignant_id"
    t.index ["enseignant_id"], name: "index_cours_on_enseignant_id"
  end

  create_table "eleves", force: :cascade do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "rue"
    t.string   "cp"
    t.string   "ville"
    t.string   "email"
    t.datetime "date_naissance"
    t.string   "tel_mobile"
    t.string   "tel_fixe"
    t.integer  "graduation"
    t.integer  "ville_entrainement"
    t.text     "a_signaler"
    t.string   "urgence_nom"
    t.string   "urgence_prenom"
    t.string   "urgence_parentee"
    t.string   "urgence_tel"
    t.boolean  "soin_moi"
    t.boolean  "soin_tutelle"
    t.integer  "info_ville"
    t.integer  "gcc_connait"
    t.integer  "parentee"
    t.integer  "prix"
    t.integer  "reglement"
    t.boolean  "signature"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "presence_id"
    t.index ["presence_id"], name: "index_eleves_on_presence_id"
  end

  create_table "enseignants", force: :cascade do |t|
    t.string   "nom"
    t.string   "prenom"
    t.integer  "graduation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etats", force: :cascade do |t|
    t.string   "etat"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "presence_id"
    t.integer  "elefe_id"
    t.index ["elefe_id"], name: "index_etats_on_elefe_id"
    t.index ["presence_id"], name: "index_etats_on_presence_id"
  end

  create_table "presences", force: :cascade do |t|
    t.date     "datecours",                  null: false
    t.string   "etat",          default: "", null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "elefe_id"
    t.integer  "cour_id"
    t.integer  "enseignant_id"
    t.index ["cour_id"], name: "index_presences_on_cour_id"
    t.index ["elefe_id"], name: "index_presences_on_elefe_id"
    t.index ["enseignant_id"], name: "index_presences_on_enseignant_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "admin",                  default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
