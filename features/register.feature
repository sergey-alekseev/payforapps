Feature: Register

  Scenario: Unsuccessful register
    Given a user visits the register page
    When he submits invalid register information
    Then he should see an error explanation

  Scenario: Successful register
    Given a user visits the register page
		When the user submits valid register information
		Then he should see success notice
