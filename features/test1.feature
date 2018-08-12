Feature: Home

  Scenario: The red button label should change after it has been clicked
    Given I reach the internet page
    And I click challenging DOM
    When I click the red button
    Then The label for the red button will change
