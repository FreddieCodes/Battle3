feature "testing forms" do

  it "has a form on the homepage" do
    visit '/'
    expect(page). to have_field("name")
  end

  it "displays the names entered in the form in /names" do
       visit '/'
    fill_in "name", :with => "Jenny"
    click_button "Submit"
    expect(page).to have_content("Jenny")
  end
end
