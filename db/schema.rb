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

ActiveRecord::Schema.define(version: 20171127135701) do

  create_table "batigrados", force: :cascade do |t|
    t.string   "titre"
    t.text     "description"
    t.date     "date_bat"
    t.text     "adresse"
    t.string   "cp"
    t.string   "ville"
    t.float    "tarif1"
    t.float    "tarif2"
    t.float    "tarif_ext"
    t.float    "tar_rep1"
    t.float    "tar_rep2"
    t.float    "tar_rep3"
    t.float    "tar_soiree"
    t.string   "adr_soiree"
    t.datetime "heur_soiree"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "com_batigrados", force: :cascade do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "nom_grupo"
    t.string   "email"
    t.string   "ttshirt"
    t.string   "tpant"
    t.boolean  "bati1"
    t.boolean  "bati2"
    t.boolean  "gradup"
    t.boolean  "repas1"
    t.boolean  "repas2"
    t.boolean  "repas3"
    t.boolean  "soiree"
    t.float    "montant"
    t.string   "reglt"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "batigrado_id"
    t.integer  "elefe_id"
    t.index ["batigrado_id"], name: "index_com_batigrados_on_batigrado_id"
    t.index ["elefe_id"], name: "index_com_batigrados_on_elefe_id"
  end

  create_table "commandes", force: :cascade do |t|
    t.string   "description"
    t.float    "montant"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "user_id"
    t.integer  "com_batigrado_id"
    t.integer  "ticket_repa_id"
    t.boolean  "sold",             default: false
    t.integer  "elefe_id"
    t.integer  "paiement_id"
    t.index ["com_batigrado_id"], name: "index_commandes_on_com_batigrado_id"
    t.index ["elefe_id"], name: "index_commandes_on_elefe_id"
    t.index ["paiement_id"], name: "index_commandes_on_paiement_id"
    t.index ["ticket_repa_id"], name: "index_commandes_on_ticket_repa_id"
    t.index ["user_id"], name: "index_commandes_on_user_id"
  end

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
    t.boolean  "acb"
    t.string   "mailpres"
    t.index ["enseignant_id"], name: "index_cours_on_enseignant_id"
  end

  create_table "cours_eleves", id: false, force: :cascade do |t|
    t.integer "cour_id",  null: false
    t.integer "elefe_id", null: false
    t.index ["cour_id", "elefe_id"], name: "index_cours_eleves_on_cour_id_and_elefe_id"
    t.index ["elefe_id", "cour_id"], name: "index_cours_eleves_on_elefe_id_and_cour_id"
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
    t.text     "info_ville"
    t.integer  "gcc_connait"
    t.integer  "parentee"
    t.integer  "prix"
    t.integer  "reglement"
    t.boolean  "signature"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "presence_id"
    t.integer  "user_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "certifmed_file_name"
    t.string   "certifmed_content_type"
    t.integer  "certifmed_file_size"
    t.datetime "certifmed_updated_at"
    t.index ["presence_id"], name: "index_eleves_on_presence_id"
    t.index ["user_id"], name: "index_eleves_on_user_id"
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
    t.boolean  "ponctuel"
    t.index ["elefe_id"], name: "index_etats_on_elefe_id"
    t.index ["presence_id"], name: "index_etats_on_presence_id"
  end

  create_table "paiements", force: :cascade do |t|
    t.float    "montant"
    t.integer  "mode_paie"
    t.boolean  "valide"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_paiements_on_user_id"
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

  create_table "repasgccs", force: :cascade do |t|
    t.string   "titre"
    t.text     "adresse"
    t.date     "date_repas"
    t.date     "date_lim"
    t.string   "repas1_enf"
    t.float    "r1e_tarif"
    t.string   "repas2_enf"
    t.float    "r2e_tarif"
    t.string   "repas1_ad"
    t.float    "r1a_tarif"
    t.string   "repas2_ad"
    t.float    "r2a_tarif"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket_repas", force: :cascade do |t|
    t.integer  "qte1",        default: 0
    t.integer  "qte2",        default: 0
    t.integer  "qta1",        default: 0
    t.integer  "qta2",        default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "elefe_id"
    t.integer  "repasgcc_id"
    t.index ["elefe_id"], name: "index_ticket_repas_on_elefe_id"
    t.index ["repasgcc_id"], name: "index_ticket_repas_on_repasgcc_id"
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "admin",                  default: 0
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
