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

ActiveRecord::Schema.define(version: 20180120194448) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
  end

end
