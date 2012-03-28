Feature: Admin and user separate sign out

  As an admin and user in one person
  I want to sign out different model
  So that I stay signed in another model

  Background: admin and user separate sign in
    Given I go to the user login page
    And I have the user account
    And I submit valid login information
    And I go to the admin sign in page
    And I have the admin account
    And I submit valid sign in information

  Scenario: User stays signed in after admin sign out
    When I go to the admin sign out page
    And I go to the user dashboard page
    Then I should be on the user dashboard page

  Scenario: Admin stays signed in after user logout

    When I go to the user logout page
    And I go to the admin dashboard page
    Then I should be on the admin dashboard page
