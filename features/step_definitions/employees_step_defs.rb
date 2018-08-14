# Given(/^I post to the rest API (.*) (.*) (.*)$/) do |name,salary,age|
#   @driver.employees.post(name, salary, age)
# end

When("I view the dummy API employee database") do
  @driver.employees.visit_dummy_api
end

Then(/^I should see the new emplyee's data (.*) (.*) (.*)$/) do |name,salary,age|
  expect(@driver.employees.check_details(name, salary, age)).to be true
end
