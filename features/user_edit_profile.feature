Feature: Edit user's profile

  As a dynamic user
  I want to edit my user profile
  So that I visit my profile page and edit my username and PO info

  Background: pre-filled fields
    Given I have the user account with valid po info
    When I login as user
    And I go to the profile page
    Then all profile fields must be pre-filled properly


  Scenario: Unsuccessful edit
    When I submit changes without providing password
    Then I should see an error explanation containing "error"


  Scenario: Successful edit
    When I fill in fields with new data
    And submit changes with providing password
    And go to the profile page
    Then these fields should contain new data
