When("I click the red button") do
  # Save initial text of the red button
  @initial_red_button = @driver.challenging_DOM.read_red_button
  # Click red button. The text should change.
  @driver.challenging_DOM.click_red_button
  sleep 2
end

Then("The label for the red button will change") do
  # The old red button text is now compared with the new red button text.
  # The text of the red button should now be different to the text from before the button was clicked
  expect(@driver.challenging_DOM.read_red_button).not_to eq(@initial_red_button)
  sleep 2
end
