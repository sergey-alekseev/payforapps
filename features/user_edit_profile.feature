Feature: Edit user's profile

  As a dynamic user
  I want to edit my user profile
  So that I visit my profile page and edit my username and PO info

  Background: pre populated fields
    When I login as user
    And I go to the profile page
    Then all profile fields must be populated properly


  Scenario: Unsuccessful edit
    When I submit changes without providing password
    Then I should see an error explanation containing "error"


  Scenario: Successful edit
    When I fill in the following:
      | Email         | other@gmail.com |
      | Username      | other_user      |
      | Business name | John Other      |
      | Address       | other@gmail.com |
      | City          | other@gmail.com |
      | State         | other@gmail.com |
      | Zip code      | John Other      |
      | Country       | other@gmail.com |
      | Contact Phone | other@gmail.com |
      | Contact Fax   | other@gmail.com |
