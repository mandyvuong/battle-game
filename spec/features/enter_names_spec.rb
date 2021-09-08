feature 'Enter names', :type => :feature do
  scenario 'submitting names' do
    visit '/'
    fill_in(:player_1_name, with: 'Jon')
    fill_in(:player_2_name, with: 'Bob')
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_text('Jon vs. Bob')
  end
end
