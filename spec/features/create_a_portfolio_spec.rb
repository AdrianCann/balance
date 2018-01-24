require 'rails_helper'

feature 'Create a portfolio' do
  it 'has success' do
    visit portfolio_index_path
    fill_in :portfolio_name, with: 'Bitcoin: The Crypto-Cuck'
    click_button 'Submit'

    expect(page).to have_text('Success')
    expect(page).to have_text('Bitcoin: The Crypto-Cuck')
  end

  it 'fails gracefully when fields are missing' do
    visit portfolio_index_path
    click_button 'Submit'

    expect(page).to have_text('Fail')
  end
end
