Given("I click example two") do
  @driver.dynamic_loading.click_example_two
end

Given("I click the start button") do
  @driver.dynamic_loading.click_start_button
end

When("The loading bar has disapeared") do
  expect(@driver.dynamic_loading.check_loading_bar_visible).to be true
  sleep 5
  expect(@driver.dynamic_loading.check_loading_bar_visible).to be false
end

Then("The phrase Hello World is on the page") do
  expect(@driver.dynamic_loading.check_hello_world).to be true
end
