Feature: User logout

  Scenario: Admin stays signed in after user logout 
  	Given a user visits the login page
      And the user has an account
      And the user submits valid login information
      And somebody visits admin sign in page
      And he has an admin account
			And he submits valid sign in information
		 When a user visits the logout page
		 	And admin visits admin dashboard
		Then he should see admin dashboard
