Feature: Admin sign in

  Scenario: Unsuccessful admin sign in
    Given somebody visits admin sign in page
    When he submits invalid sign in information
    Then he should see an error message

  Scenario: Successful admin sign in
    Given somebody has an admin account
      And he isn't signed in as admin
      And he visits admin sign in page
     When he submits valid sign in information
    Then he should see admin dashboard
      And he should see settings link
