# BJSS-Test

## Task

Deliver a working test framework that aims towards "best practices".

###Test 1
- Navigate to https://the-internet.herokuapp.com/
- Click 'Challenging DOM'.
- Confirm that the red button label changes after it's clicked.

###Test 2
- Navigate to https://the-internet.herokuapp.com/
- Click 'Dynamically Loaded Page Elements' and click 'Example 2' rendered after the fact.
- Confirm 'Hello World!' is rendered after the loading bar dissapears.

###Test 3
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

To run all of the tests one after another, enter `cucumber` in the terminal. To run all tests for an individual file, enter `cucumber (file 