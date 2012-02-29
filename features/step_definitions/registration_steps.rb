Given /^a user visits the register page$/ do
  visit new_user_registration_path
end

When /^he submits invalid register information$/ do
  click_button "Register"
end

Then /^he should see an error explanation$/ do
	page.should have_selector('#error_explanation', text: 'error')
end


Given /^the user visits the register page$/ do
	visit new_user_registration_path
end

When /^the user submits valid register information$/ do
  fill_in "Email",    with: 'random@gmail.com'
  fill_in "Username",	with: 'random_user'
  fill_in "Password", with: 'somepass'
  fill_in "Password confirmation", with: 'somepass'
	click_button "Register"
end

Then /^he should see success notice$/ do
  page.should have_selector('#flash_notice', text: 'success')
end
