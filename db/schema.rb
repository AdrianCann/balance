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

ActiveRecord::Schema.define(version: 20180124013326) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asset_class_sections", force: :cascade do |t|
    t.bigint "fund_id", null: false
    t.bigint "asset_class_id", null: false
    t.decimal "percentage", default: "0.0", null: false
    t.datetime "percentage_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_class_id", "fund_id"], name: "index_asset_classes_funds_on_asset_class_id_and_fund_id"
    t.index ["fund_id", "asset_class_id"], name: "index_asset_classes_funds_on_fund_id_and_asset_class_id"
  end

  create_table "asset_classes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_asset_classes_on_name"
  end

  create_table "fund_sections", force: :cascade do |t|
    t.bigint "portfolio_id"
    t.bigint "fund_id"
    t.decimal "shares"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fund_id"], name: "index_fund_sections_on_fund_id"
    t.index ["portfolio_id"], name: "index_fund_sections_on_portfolio_id"
  end

  create_table "funds", force: :cascade do |t|
    t.string "ticker"
    t.string "name"
    t.text "description"
    t.decimal "value"
    t.datetime "last_valued_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "last_share_price"
    t.datetime "last_share_price_at"
    t.index ["ticker"], name: "index_funds_on_ticker"
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

end
