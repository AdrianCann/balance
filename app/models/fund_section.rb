class FundSection < ApplicationRecord
  belongs_to :portfolio
  belongs_to :fund

  def current_value
    fund.last_share_price * shares
  end
end
