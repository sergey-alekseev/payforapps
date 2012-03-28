Feature: User login

  As an existing not logged in user
  I want to login and see my dashboard and add app link
  So that I try login as user

  Background: first logout and then go to the login page
    Given I go to the user logout page
    And I go to the user login page

  Scenario: Unsuccessful user login
    When I submit invalid login information
    Then I should see an error message containing "Invalid"

  Scenario: Successful user login
    Given I have the user account
    And I submit valid login information
    Then I should be on the user dashboard page
    And I should see an add app link with text "Add App"