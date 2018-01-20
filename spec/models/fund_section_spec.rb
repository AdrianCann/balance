require 'rails_helper'

describe FundSection do
  it { should belong_to(:portfolio) }

  describe '#current_value' do
    it 'multiplies number of shares by the price per share' do
      section = FundSection.new(last_share_price: 10, shares: 10)

      expect(section.current_value).to eq(100)
    end
  end
end
