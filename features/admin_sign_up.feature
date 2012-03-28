Feature: Admin sign up

  As a site owner
  I want to ensure that nobody can sign up as admin
  So that I check it

  Scenario: Try to sign up as admin
    When I go to the admin sign up page
    Then I should be on the admin sign in page
