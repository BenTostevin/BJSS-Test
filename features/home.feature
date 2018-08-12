Feature: Home

  Scenario: The red button label should change after it has been clicked
    Given I am on the Challenging DOM page
    When I click the red button
    Then The label for the red button will change
