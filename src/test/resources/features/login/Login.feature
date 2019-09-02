Feature: Login
  As user I want to login under different roles

  Scenario: Login test (negative)
    Given Open Vytrack login page
    When Enter valid username and invalid password information
    And Click login
    Then Message Invalid user name or password. should be displayed
    And Page title and url should be same

    @negative
    Scenario: Verify warning message for invalid credentials
      Given user is on the landing page
      Then user logs in with "wrong" username and "wrong" password
      And user verifies that "Invalid user name or password."
