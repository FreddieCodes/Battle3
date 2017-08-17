def sign_in_and_play
  visit '/'
  fill_in "name_1", :with => "Jenny"
  fill_in "name_2", :with => "Freddie"
  click_button "Submit"
end
