require 'rails_helper'

RSpec.describe Fund, type: :model do
  it { should validate_uniqueness_of(:ticker) }
  it { should validate_presence_of(:ticker) }
  it { should have_many(:fund_sections) }
  it { should have_many(:asset_classes) }
  it { should have_many(:asset_class_sections) }

  describe '#get_share_price', :vcr do
    it 'gets the share price' do
      fund = Fund.new(ticker: 'AAPL')

      expect(fund.get_share_price).to eq(178.46)
    end
  end
end
