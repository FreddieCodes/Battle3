feature "testing forms" do

  it "has a form on the homepage" do
    visit '/'
    expect(page). to have_field("player_1")
  end

  it "displays the names entered in the form in /names" do
    sign_in_and_play
    expect(page).to have_content("Jenny vs Freddie")
  end
end

feature "View hit points" do
  it "see Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content "Freddie: 100HP"
  end
end

feature 'attacking' do
  it 'player1 can attack player 2' do
    sign_in_and_play
    expect(page).to have_button('attack')
  end
  it 'displays attack confirmation page' do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content "Jenny attacks Freddie"
  end
  it 'displays attack confirmation page' do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content "Freddie: 90HP"
  end
end

# feature 'hit points' do
#   it 'clicks button' do
#   sign_in_and_play
#   click_button('attack')
#   expect()
# end
# end
