feature 'Enter names', :type => :feature do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_text('Jon vs. Bob')
  end
end

feature 'View hit points', :type => :feature do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    save_and_open_page
    expect(page).to have_content 'Bob: 60HP'
  end
end
