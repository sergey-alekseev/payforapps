#Given
Given /has an admin account$/ do
	@admin = FactoryGirl.create(:admin)
end

Given /isn't signed in as admin$/ do
	visit destroy_admin_session_path
end

Given /visits admin sign in page$/ do
  visit new_admin_session_path
end

#When
When /submits invalid sign in information$/ do
  click_button "Sign in"
end

When /submits valid sign in information$/ do
  fill_in "Email",    with: @admin.email
  fill_in "Password", with: @admin.password
  click_button "Sign in"
end

When /visits admin dashboard$/ do
  visit rails_admin_path
end

#Then
Then /should see admin dashboard$/ do
  page.should have_selector('h1', text: 'Site administration')
end

Then /should see settings link$/ do
  page.should have_link('Settings', href: settings_path)
end
