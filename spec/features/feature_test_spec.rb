feature "testing forms" do

  it "has a form on the homepage" do
    visit '/'
    expect(page). to have_field("name_1")
  end

  it "displays the names entered in the form in /names" do
    sign_in_and_play
    expect(page).to have_content("Jenny vs Freddie")
  end
end

feature "View hit points" do
  it "see Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content "Freddie: 60HP"
  end
end
