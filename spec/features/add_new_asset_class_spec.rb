require 'rails_helper'

feature 'Add new asset class' do
  it 'has success with form filled out' do
    visit asset_class_index_path
    fill_in :asset_class_name, with: 'BOND'
    click_button 'Create'

    expect(page).to have_text('Success')
    expect(page).to have_text('BOND')
  end

  it 'fails gracefully when fields are missing' do
    visit asset_class_index_path
    click_button 'Create'

    expect(page).to have_text('Fail')
  end
end
