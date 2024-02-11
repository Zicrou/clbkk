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

ActiveRecord::Schema[7.0].define(version: 2024_02_11_195549) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "immobiliers", force: :cascade do |t|
    t.string "titre"
    t.integer "chambre"
    t.integer "salle_de_bain"
    t.integer "douche_exterieur"
    t.text "description"
    t.string "prix"
    t.string "adresse"
    t.string "region"
    t.integer "etage"
    t.string "rez_de_chausse"
    t.string "terasse"
    t.string "contact"
    t.integer "statut"
    t.integer "etat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicules", force: :cascade do |t|
    t.string "marque"
    t.string "modele"
    t.string "photo"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "annee_modele"
    t.string "date_de_premiere_mise_en_circulation"
    t.string "kilometrage"
    t.integer "diesel"
    t.integer "gazoil"
    t.integer "hybride"
    t.integer "manuelle"
    t.integer "automatique"
    t.integer "sequentielles"
    t.string "type_de_vehicule"
    t.integer "nombre_de_porte"
    t.integer "nombre_de_place"
    t.string "puissance_fiscale"
    t.string "puissance_din"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
