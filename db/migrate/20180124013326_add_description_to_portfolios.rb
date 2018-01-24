class AddDescriptionToPortfolios < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolios, :description, :text
  end
end
