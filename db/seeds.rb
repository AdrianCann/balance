vanguard_funds = [
  {
    ticker: "VTSMX",
    name: "Vanguard Total Stock Market Index Fund Investor Shares",
    description: "Vanguard Total Stock Market Index offers diversified exposure to U.S. stocks of all sizes."
  },
  {
    ticker: "VBMFX",
    name: "Vanguard Total Bond Market Index Fund Investor Shares",
    description: "This fund is designed to provide broad exposure to U.S. investment grade bonds. Reflecting this goal, the fund invests about 30% in corporate bonds and 70% in U.S. government bonds of all maturities (short-, intermediate-, and long-term issues)."
  },
  {
    ticker: "VGSIX",
    name: "Vanguard Real Estate Index Fund Investor Shares",
    description: "This fund invests in real estate investment trusts—companies that purchase office buildings, hotels, and other real estate property. REITs have often performed differently than stocks and bonds, so this fund may offer some diversification to a portfolio already made up of stocks and bonds."
  }
]

vanguard_funds.each do |attributes|
  Fund.create!(attributes)
end
