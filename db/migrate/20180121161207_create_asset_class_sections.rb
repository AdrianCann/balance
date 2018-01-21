class CreateAssetClassSections < ActiveRecord::Migration[5.1]
  def change
    create_table :asset_class_sections do |t|
      t.bigint "fund_id", null: false
      t.bigint "asset_class_id", null: false
      t.decimal "percentage", default: "0.0", null: false
      t.datetime "percentage_at"
      t.index ["asset_class_id", "fund_id"], name: "index_asset_classes_funds_on_asset_class_id_and_fund_id"
      t.index ["fund_id", "asset_class_id"], name: "index_asset_classes_funds_on_fund_id_and_asset_class_id"
      t.timestamps
    end
  end
end
