class CreateFunds < ActiveRecord::Migration[5.1]
  def change
    create_table :funds do |t|
      t.string :ticker
      t.string :name
      t.text :description
      t.decimal :value
      t.datetime :last_valued_at

      t.timestamps
    end

    add_index :funds, :ticker
  end
end
