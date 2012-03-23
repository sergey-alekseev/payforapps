Feature: User login

  Scenario: Unsuccessful user login
    Given a user visits the login page
    When he submits invalid login information
    Then he should see an error message

  Scenario: Successful user login
    Given a user visits the login page
      And the user has an account
      And the user submits valid login information
    Then he should see user dashboard
      And he should see an add app link
