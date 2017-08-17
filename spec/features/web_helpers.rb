def sign_in_and_play
  visit '/'
  fill_in "player_1", :with => "Jenny"
  fill_in "player_2", :with => "Freddie"
  click_button "Submit"
end
