Feature: User registration

  As a new unregistered user
  I want to register
  So that I want to try

  Background:
    Given I am on the user register page

  Scenario: Unsuccessful register
    When I submit invalid register information
    Then I should see an error explanation containing "error"

  Scenario: Successful register
    When I submit valid register information
    Then I should see a notice message containing "success"