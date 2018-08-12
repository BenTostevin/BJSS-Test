Given("I am on the Challenging DOM page") do
  @challenging_DOM.home.visit_challenging_DOM

end

When("I click the red button") do
  @initial_text = @challenging_DOM.home.read_red_button
  @challenging_DOM.home.click_red_button
  sleep 2
end


Then("The label for the red button will change") do
  p @initial_text
  p @challenging_DOM.home.read_red_button
  expect(@challenging_DOM.home.read_red_button).not_to eq(@initial_text)
  sleep 2
end
