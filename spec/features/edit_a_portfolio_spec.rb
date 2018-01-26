require 'rails_helper'

feature 'Edit a portfolio' do
  it 'has success' do
    portfolio = create(:portfolio, name: "New")
    visit portfolio_path(portfolio)
    fill_in :portfolio_name, with: 'Edited'
    click_button 'Update'

    expect(page).to have_text('Success')
    expect(page).to have_text('Edited')
  end

  it 'adds a fund_shares for a fund that exists' do
    portfolio = create(:portfolio, name: "New")
    create(:fund, ticker: 'TICK', name: "ENRON")
    visit portfolio_path(portfolio)
    fill_in :ticker, with: 'TICK'
    fill_in 'fund_section[shares]', with: '10.1'
    click_button 'Add Fund'

    expect(page).to have_text('Success')
    expect(page).to have_text("You have 10.1 shares in ENRON")
  end

  it 'does not add a fund that does not exist' do
    portfolio = create(:portfolio, name: "New")
    visit portfolio_path(portfolio)
    fill_in :ticker, with: 'TICK'
    fill_in 'fund_section[shares]', with: '10.1'
    click_button 'Add Fund'

    expect(page).to have_text('Failure to save')
  end
end
