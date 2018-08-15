# BJSS-Test

## Task

Deliver a working test framework that aims towards "best practices".

### Test 1
- Navigate to https://the-internet.herokuapp.com/
- Click 'Challenging DOM'.
- Confirm that the red button label changes after it's clicked.

### Test 2
- Navigate to https://the-internet.herokuapp.com/
- Click 'Dynamically Loaded Page Elements' and click 'Example 2' rendered after the fact.
- Confirm 'Hello World!' is rendered after the loading bar disappears.

### Test 3
- Post to the http://dummy.restapiexample.com/
- Create route and verify you receive a response that indicates that a user was made.

## Tech Stack
The project used the following tech stack:

- Ruby
- Capybara
- Cucumber
- RSpec
- Httparty

## Setup & Running Tests
Clone this git repository and run the project in atom.

To run the tests you must first initialize cucumber by entering `cucumber --init` in the terminal.

To run all of the tests one after another, enter `cucumber` in the terminal. To run all tests for an individual file, enter `cucumber (file path)`. To run individual tags, run `cucumber -t @(tag name)`.

## Approach
Each test has a cucumber `feature` file. The steps for the feature files have a corresponding `step_defs` file in the 'step definitions' folder which call functions for each step from the 'pages' folder.

Each test has a corresponding file in the 'pages' folder which contains a class containing the functions for the step definitions. These classes are called in the `home.rb` file in the 'pages' folder. The `home.rb` file has a class named 'Home' which contains functions which is where the classes for each test are called.

The 'Home' class is called in the hook, which runs before each test is run.

### Test 1 - Challenging DOM
For the first test, the 'Challenging DOM' page is first reached. The text inside the red button is saved in an instance variable named `@initial_red_button` once the page is first reached. Then the red button is clicked which should change the text inside the red button.

The text inside the red button after the button has been clicked is compared with the initial text. It is expected that the initial text is to be different from the new text.

### Test 2 - Dynamic Loading
For the second test, once the 'Dynamic Loading' page has been reached, the start button is clicked. Then the presence of the loading bar is tested.

The loading bar should only appear temporarily, so 'sleep' is used to wait a short while. After the wait, the presence of the loading bar is checked again.

I manually evaluated how long the loading bar is present for and added a sleep length correspondingly. If there were a similar situation where 'sleep' should not be used, a function containing a while loop which cycles for an amount of time until either the loading bar disappears or too much time has passed could be used, such as the following written in pseudo-code:

```
timer = 0
while (loading bar is present) or (timer < 30)
	if (loading bar is present)
		timer ++
	end
	else if (loading bar is not present)
		check 'Hello World!' is present
	end
	sleep 1
end
```

I chose not to use this method because I decided that it was unnecessarily complicated for the task at hand.

### Test 3 - Posting to API
In contrast to the first two feature files, a Scenario Outline was used as opposed to a Scenario for this test. With a scenario outline, many scenarios with many different sets of input data can be used. Each set of input data can be entered in the Examples table in the feature file.

The first step definition takes the input data from the Examples table and uses it in the 'post' function in the `employees.rb` file in the pages folder. This function converts a ruby hash to json and parse it to the API.

Once the employee data page has been reached, the 'check_details' function checks that the same input data is now displayed on the page.
