Feature: Dynamic laoding page tests

  @test2
  Scenario: Confirm hello world is printed after the loading bar disapears
    Given I reach the internet page
    And I click dynamic loading
    And I click example two
    And I click the start button
    When The loading bar has disapeared
    Then The phrase Hello World is on the page
