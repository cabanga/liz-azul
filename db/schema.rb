# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_18_200743) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agrupamentos", force: :cascade do |t|
    t.string "nome"
    t.integer "numero"
    t.string "lema"
    t.bigint "regiao_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["regiao_id"], name: "index_agrupamentos_on_regiao_id"
  end

  create_table "escuteiros", force: :cascade do |t|
    t.string "nome"
    t.datetime "data_nascimento"
    t.string "contacto"
    t.string "referencia"
    t.bigint "agrupamento_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agrupamento_id"], name: "index_escuteiros_on_agrupamento_id"
  end

  create_table "regioes", force: :cascade do |t|
    t.string "nome"
    t.string "lema"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "agrupamentos", "regioes"
  add_foreign_key "escuteiros", "agrupamentos"
end
