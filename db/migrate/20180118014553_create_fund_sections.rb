class CreateFundSections < ActiveRecord::Migration[5.1]
  def change
    create_table :fund_sections do |t|
      t.belongs_to :portfolio
      t.belongs_to :fund
      t.decimal :shares
      t.decimal :last_share_price
      t.decimal :last_share_price_at

      t.timestamps
    end
  end
end
