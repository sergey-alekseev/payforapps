Feature: Admin sign up

  Scenario: Try to sign up as admin
    Given somebody tries to visit admin sign up page
    Then he should see admin sign in page
