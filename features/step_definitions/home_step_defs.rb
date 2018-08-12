Given("I reach the internet page") do
  @driver.home.visit_site
end

Given("I click challenging DOM") do
  @driver.home.click_challenging_DOM
end

Given("I click dynamic loading") do
  @driver.home.click_dynamic_loading
end
