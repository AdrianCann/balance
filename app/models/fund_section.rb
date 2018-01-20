class FundSection < ApplicationRecord
  belongs_to :portfolio, dependent: :destroy

  def current_value
    last_share_price * shares
  end
end
