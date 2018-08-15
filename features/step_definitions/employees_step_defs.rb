Given(/^I post to the rest API (.*) (.*) (.*)$/) do |name,salary,age|
  # Post the employee details to the API
  @driver.employees.post(name, salary, age)
end

When("I view the dummy API employee database") do
  @driver.employees.visit_dummy_api
end

Then(/^I should see the new emplyee's data (.*) (.*) (.*)$/) do |name,salary,age|
  # Check to see if the employee's details are shown.
  expect(@driver.employees.check_details(name, salary, age)).to be true
end
