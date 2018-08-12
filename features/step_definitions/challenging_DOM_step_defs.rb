When("I click the red button") do
  @initial_red_button = @driver.challenging_DOM.read_red_button
  @driver.challenging_DOM.click_red_button
  sleep 2
end

Then("The label for the red button will change") do
  p @initial_red_button
  p @driver.challenging_DOM.read_red_button
  expect(@driver.challenging_DOM.read_red_button).not_to eq(@initial_red_button)
  sleep 2
end
