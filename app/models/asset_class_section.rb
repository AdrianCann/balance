class AssetClassSection < ApplicationRecord
  belongs_to :fund
  belongs_to :asset_class
end
