class AssetClass < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :funds, through: :asset_class_sections
  has_many :asset_class_sections
end
