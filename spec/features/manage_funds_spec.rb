require 'rails_helper'

feature 'Manage funds' do
  it 'Creates a fund' do
    visit funds_path
    fill_in :fund_name, with: 'Crypto-Hypno-Index'
    fill_in :fund_ticker, with: 'CRY'

    click_button "Create"

    expect(page).to have_text('Success')
    expect(page).to have_text('Crypto-Hypno-Index')
  end

  it 'Updates a fund' do
    create(:fund, ticker: 'AMZN', name: 'Amazon')
    visit funds_path

    within(".edit_fund") do
      fill_in :fund_name, with: 'Amazon.com'
      click_button 'Update Fund'
    end

    expect(page).to have_text('Success')
    expect(page).to have_text('Amazon.com')
  end
end
