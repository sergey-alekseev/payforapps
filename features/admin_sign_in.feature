Feature: Admin sign in

  As an existing not signed in admin
  So that I can sign in as admin
  I want to sign in and see my admin dashboard and settings link

  Background: first sign out and then go to the sign in page
    Given I go to the admin sign out page
    And I go to the admin sign in page

  Scenario: Unsuccessful admin sign in
    When I submit invalid sign in information
    Then I should see an error message containing "Invalid"

  Scenario: Successful admin sign in
    Given I have the admin account
    When I submit valid sign in information
    Then I should be on the admin dashboard page
    And I should see an settings link with text "Settings"