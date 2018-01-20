class Fund < ApplicationRecord
  validates :ticker, presence: true, uniqueness: true
  has_many :fund_sections, dependent: :destroy

  def get_share_price
    get_quote.l.to_d
  end

  private

  def get_quote
    @quote ||= StockQuote::Stock.quote(ticker)
  end
end
