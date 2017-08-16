feature "testing forms" do

  it "has a form on the homepage" do
    visit '/'
    expect(page). to have_field("name_1")
  end

  it "displays the names entered in the form in /names" do
       visit '/'
    fill_in "name_1", :with => "Jenny"
    fill_in "name_2", :with => "Freddie"
    click_button "Submit"
    expect(page).to have_content("Jenny vs Freddie")
  end
end
