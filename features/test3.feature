Feature: Create new user

  Scenario Outline: Confirm that a new user can be created
    # Given I post to the rest API <name> <salary> <age>
    When I view the dummy API employee database
    Then I should see the new emplyee's data <name> <salary> <age>

    Examples:
     | name | salary | age |
     | testA | 54321 | 42 |
