class FundSection < ApplicationRecord
  def current_value
    last_share_price * shares
  end
end
