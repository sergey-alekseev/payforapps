Feature: Admin sign out

  Scenario: User stays signed in after admin signout 
  	Given a user visits the login page
      And the user has an account
      And the user submits valid login information
      And somebody visits admin sign in page
      And he has an admin account
			And he submits valid sign in information
		 When admin visits the sign out page
		 	And user visits user dashboard
		Then he should see user dashboard
