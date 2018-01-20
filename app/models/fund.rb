class Fund < ApplicationRecord
  validates :ticker, presence: true, uniqueness: true
  has_many :fund_sections, dependent: :destroy
end
