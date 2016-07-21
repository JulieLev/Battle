RSpec.feature "Attacks", :type => :feature do
  scenario "Player 1 attacks Player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Player1 attacked Player2"
  end

  scenario "Attack reduces Player 2 HP by 10" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Player2 Hit Points: 50"
  end

  scenario "Player 2 attacks Player 1" do
    sign_in_and_play
    click_button "Attack"
    click_button "Next Turn"
    click_button "Attack"
    expect(page).to have_content "Player1 Hit Points: 50"
  end
end
