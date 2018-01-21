class AssetClass < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
