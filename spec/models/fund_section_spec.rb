require 'rails_helper'

describe FundSection do
  it { should belong_to(:portfolio) }
  it { should belong_to(:fund) }

  describe '#current_value' do
    it 'multiplies number of shares by the price per share of the fund' do
      fund = Fund.new(ticker: 'TICK', last_share_price: 10)
      section = FundSection.new(shares: 10, fund: fund)

      expect(section.current_value).to eq(100)
    end
  end
end
