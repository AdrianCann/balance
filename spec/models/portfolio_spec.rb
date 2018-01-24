require "rails_helper"

RSpec.describe Portfolio, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should have_many(:fund_sections) }

  describe '#asset_total' do
    it 'adds up the values of each fund_section' do
      fund_1 = build(:fund, last_share_price: 10)
      fund_2 = build(:fund, last_share_price: 20)
      fund_3 = build(:fund, last_share_price: 1)
      portfolio = Portfolio.create
      portfolio.fund_sections << build(:fund_section, fund: fund_1, shares: 5)
      portfolio.fund_sections << build(:fund_section, fund: fund_2, shares: 5)
      portfolio.fund_sections << build(:fund_section, fund: fund_3, shares: 5)

      # 5 * 10 + 5 * 20 + 5 * 1 == 50 + 100 + 5 == 155
      expect(portfolio.asset_total).to eq(155)
    end

    it 'returns 0 if a portfolio has no fund sections' do
      portfolio = Portfolio.new
      portfolio.fund_sections = []

      expect(portfolio.asset_total).to eq(0)
    end
  end
end
