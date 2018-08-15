Given("I click example two") do
  @driver.dynamic_loading.click_example_two
end

Given("I click the start button") do
  @driver.dynamic_loading.click_start_button
end

When("The loading bar has disapeared") do
  # Loading bar should be present immediately after clicking start
  expect(@driver.dynamic_loading.check_loading_bar_visible).to be true
  # Added a 'sleep' to wait for the page to load
  sleep 5
  # Loading bar should not be present a while after clicking start
  expect(@driver.dynamic_loading.check_loading_bar_visible).to be false
end

Then("The phrase Hello World is on the page") do
  expect(@driver.dynamic_loading.check_hello_world).to be true
end
