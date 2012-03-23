#Given
Given /^a user visits the login page$/ do
  visit new_user_session_path
end

Given /^the user has an account$/ do
	@user = FactoryGirl.create(:user)
end

#When
When /^he submits invalid login information$/ do
  click_button "Login"
end

When /^the user submits valid login information$/ do
  visit new_user_session_path
  fill_in "Email",    with: @user.email
  fill_in "Password", with: @user.password
  click_button "Login"
end

#Then
Then /^he should see an error message$/ do
	page.should have_selector('#flash_alert', text: 'Invalid')
end

Then /^he should see user dashboard$/ do
  page.should have_selector('title', text: 'Dashboard')
end

Then /^he should see an add app link$/ do
  page.should have_link('Add App', href: add_path)
end
