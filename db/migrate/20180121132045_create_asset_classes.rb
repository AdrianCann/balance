class CreateAssetClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :asset_classes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    add_index :asset_classes, :name
  end
end
