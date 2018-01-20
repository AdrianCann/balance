class RemoveAndRenameColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :fund_sections, :last_share_price, :decimal
    remove_column :fund_sections, :last_share_price_at, :datetime

    add_column :funds, :last_share_price, :decimal
    add_column :funds, :last_share_price_at, :datetime
  end
end
